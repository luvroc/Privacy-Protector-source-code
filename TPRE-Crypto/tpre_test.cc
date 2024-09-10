#include "yacl/crypto/tpre/tpre.h"

#include "absl/strings/escaping.h"
#include "gtest/gtest.h"

namespace yacl::crypto::test {

TEST(TpreTest, Test1) {
  std::string iv = "123456789";
  TPRE tpre;
  Keys keys;

  std::unique_ptr<EcGroup> ecc_group = EcGroupFactory::Instance().Create("sm2");

  std::pair<Keys::PublicKey, Keys::PrivateKey> key_pair_A =
      keys.GenerateKeyPair(ecc_group);//Alice密钥对生成算法

  std::string message = "I'm Alice.";

  std::pair<Capsule::CapsuleStruct, std::vector<uint8_t>> ct_1 =
      tpre.Encrypt(ecc_group, key_pair_A.first, iv, message);//加密

  /*std::string message_1 =
      tpre.Decrypt(ecc_group, ct_1.first, iv, ct_1.second, key_pair_A.second);//解密

  EXPECT_EQ(message, message_1);

  std::string message_2 = "I'm fine. Thank you";

  std::pair<Capsule::CapsuleStruct, std::vector<uint8_t>> ct_2 =
      tpre.Encrypt(ecc_group, key_pair_A.first, iv, message_2);//加密*/

  std::pair<Keys::PublicKey, Keys::PrivateKey> key_pair_B =
      keys.GenerateKeyPair(ecc_group);//Bob密钥对生成算法

  int N = 5; 
  int t = 4;  

  std::vector<Keys::KFrag> kfrags = keys.GenerateReKey(
      ecc_group, key_pair_A.second, key_pair_A.first, key_pair_B.first, N, t);//重加密密钥生成算法，生成重加密密钥片段kfrags

  std::pair<std::vector<Capsule::CFrag>, std::vector<uint8_t>> re_ct_set;//定义一个存储重加密结果的集合re_ct_set。

  for (int i = 0; i < t; i++) {
    std::pair<Capsule::CapsuleStruct, std::vector<uint8_t>> ct_2_i = {
        ct_2.first, ct_2.second};

    std::pair<Capsule::CFrag, std::vector<uint8_t>> re_ct_i =
        tpre.ReEncrypt(ecc_group, kfrags[i], ct_2_i);

    std::unique_ptr<Capsule::CFrag> cfrag_i_up(
        new Capsule::CFrag(re_ct_i.first));

    re_ct_set.first.push_back(re_ct_i.first);

    re_ct_set.second = re_ct_i.second;
  }//对t个重加密密钥片段进行重加密，生成新的密文片段re_ct_i。将生成的片段添加到 re_ct_set 中。

  std::string message_3 =
      tpre.DecryptFrags(ecc_group, key_pair_B.second, key_pair_A.first,
                        key_pair_B.first, iv, re_ct_set);

  EXPECT_EQ(message_2, message_3);
}
}// namespace yacl::crypto::test
