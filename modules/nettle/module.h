#pragma once

#include <cryptofuzz/components.h>
#include <cryptofuzz/module.h>
#include <optional>

namespace cryptofuzz {
namespace module {

class Nettle : public Module {
    public:
        Nettle(void);
        std::optional<component::Digest> OpDigest(operation::Digest& op) override;
        std::optional<component::MAC> OpHMAC(operation::HMAC& op) override;
        std::optional<component::MAC> OpUMAC(operation::UMAC& op) override;
        std::optional<component::MAC> OpCMAC(operation::CMAC& op) override;
        std::optional<component::Ciphertext> OpSymmetricEncrypt(operation::SymmetricEncrypt& op) override;
        std::optional<component::Cleartext> OpSymmetricDecrypt(operation::SymmetricDecrypt& op) override;
        std::optional<component::Key> OpKDF_HKDF(operation::KDF_HKDF& op) override;
        std::optional<component::Key> OpKDF_PBKDF2(operation::KDF_PBKDF2& op) override;
        std::optional<component::ECC_KeyPair> OpECC_GenerateKeyPair(operation::ECC_GenerateKeyPair& op) override;
        std::optional<component::ECC_PublicKey> OpECC_PrivateToPublic(operation::ECC_PrivateToPublic& op) override;
        std::optional<bool> OpECDSA_Verify(operation::ECDSA_Verify& op) override;
        std::optional<component::ECDSA_Signature> OpECDSA_Sign(operation::ECDSA_Sign& op) override;
        std::optional<component::ECC_Point> OpECC_Point_Mul(operation::ECC_Point_Mul& op) override;
};

} /* namespace module */
} /* namespace cryptofuzz */
