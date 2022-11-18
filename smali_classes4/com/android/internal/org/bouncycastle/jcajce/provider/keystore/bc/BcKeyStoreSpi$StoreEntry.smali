.class Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
.super Ljava/lang/Object;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreEntry"
.end annotation


# instance fields
.field blacklist alias:Ljava/lang/String;

.field blacklist certChain:[Ljava/security/cert/Certificate;

.field blacklist date:Ljava/util/Date;

.field blacklist obj:Ljava/lang/Object;

.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

.field blacklist type:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 10
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "password"    # [C
    .param p5, "certChain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 148
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 149
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 150
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 152
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 154
    .local v0, "salt":[B
    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 156
    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0x3ff

    add-int/lit16 v7, v1, 0x400

    .line 159
    .local v7, "iterationCount":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v8, v1

    .line 160
    .local v8, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v9, v1

    .line 162
    .local v9, "dOut":Ljava/io/DataOutputStream;
    array-length v1, v0

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 163
    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 164
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 166
    const-string v2, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x1

    move-object v1, p1

    move-object v4, p4

    move-object v5, v0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 167
    .local v1, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v2, v9, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 169
    .local v2, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    .end local v9    # "dOut":Ljava/io/DataOutputStream;
    .local v3, "dOut":Ljava/io/DataOutputStream;
    invoke-static {p1, p3, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mencodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 173
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 175
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 176
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 0
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/security/cert/Certificate;

    .line 123
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 124
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 125
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 127
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 128
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V
    .locals 0
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "type"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 183
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 184
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 185
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 186
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 187
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 188
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V
    .locals 0
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "type"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "certChain"    # [Ljava/security/cert/Certificate;

    .line 196
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 197
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 199
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 200
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 201
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 202
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 0
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "obj"    # [B
    .param p4, "certChain"    # [Ljava/security/cert/Certificate;

    .line 134
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 135
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 136
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 138
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 139
    return-void
.end method


# virtual methods
.method blacklist getAlias()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method blacklist getDate()Ljava/util/Date;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    return-object v0
.end method

.method blacklist getObject()Ljava/lang/Object;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getObject([C)Ljava/lang/Object;
    .locals 19
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 223
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string/jumbo v9, "no match"

    if-eqz v8, :cond_0

    array-length v0, v8

    if-nez v0, :cond_1

    .line 225
    :cond_0
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    instance-of v2, v0, Ljava/security/Key;

    if-eqz v2, :cond_1

    .line 227
    return-object v0

    .line 231
    :cond_1
    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 233
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v10, v0

    .line 234
    .local v10, "bIn":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v0

    .line 238
    .local v11, "dIn":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    move-object v12, v0

    .line 240
    .local v12, "salt":[B
    invoke-virtual {v11, v12}, Ljava/io/DataInputStream;->readFully([B)V

    .line 242
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 244
    .local v7, "iterationCount":I
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v3, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v4, 0x2

    move-object/from16 v5, p1

    move-object v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v0

    move-object v13, v0

    .line 246
    .local v13, "cipher":Ljavax/crypto/Cipher;
    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-direct {v0, v11, v13}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v14, v0

    .line 250
    .local v14, "cIn":Ljavax/crypto/CipherInputStream;
    :try_start_1
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mdecodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 252
    :catch_0
    move-exception v0

    move-object v15, v0

    .line 254
    .local v15, "x":Ljava/lang/Exception;
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v10, v0

    .line 255
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v0

    .line 257
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    move-object v12, v0

    .line 259
    invoke-virtual {v11, v12}, Ljava/io/DataInputStream;->readFully([B)V

    .line 261
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v7, v0

    .line 263
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v3, "BrokenPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v4, 0x2

    move-object/from16 v5, p1

    move-object v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v0

    move-object v13, v0

    .line 265
    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-direct {v0, v11, v13}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v14, v0

    .line 267
    const/16 v16, 0x0

    .line 271
    .local v16, "k":Ljava/security/Key;
    :try_start_3
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mdecodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 289
    .end local v16    # "k":Ljava/security/Key;
    .local v0, "k":Ljava/security/Key;
    goto :goto_0

    .line 273
    .end local v0    # "k":Ljava/security/Key;
    .restart local v16    # "k":Ljava/security/Key;
    :catch_1
    move-exception v0

    .line 275
    .local v0, "y":Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v10, v2

    .line 276
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v2

    .line 278
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [B

    move-object v12, v2

    .line 280
    invoke-virtual {v11, v12}, Ljava/io/DataInputStream;->readFully([B)V

    .line 282
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move v7, v2

    .line 284
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v3, "OldPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v4, 0x2

    move-object/from16 v5, p1

    move-object v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v2

    move-object v13, v2

    .line 286
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, v11, v13}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object v14, v2

    .line 288
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mdecodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v2

    move-object v0, v2

    .line 294
    .end local v16    # "k":Ljava/security/Key;
    .local v0, "k":Ljava/security/Key;
    :goto_0
    if-eqz v0, :cond_2

    .line 296
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v6, v2

    .line 297
    .local v6, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v2

    .line 299
    .local v5, "dOut":Ljava/io/DataOutputStream;
    array-length v2, v12

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 300
    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->write([B)V

    .line 301
    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 303
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v3, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v4, 0x1

    move-object/from16 v17, v5

    .end local v5    # "dOut":Ljava/io/DataOutputStream;
    .local v17, "dOut":Ljava/io/DataOutputStream;
    move-object/from16 v5, p1

    move-object/from16 v16, v6

    .end local v6    # "bOut":Ljava/io/ByteArrayOutputStream;
    .local v16, "bOut":Ljava/io/ByteArrayOutputStream;
    move-object v6, v12

    move/from16 v18, v7

    .end local v7    # "iterationCount":I
    .local v18, "iterationCount":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 304
    .local v2, "out":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v4, v17

    .end local v17    # "dOut":Ljava/io/DataOutputStream;
    .local v4, "dOut":Ljava/io/DataOutputStream;
    invoke-direct {v3, v4, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 306
    .local v3, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 308
    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-static {v5, v0, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mencodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 310
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 312
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 314
    return-object v0

    .line 318
    .end local v2    # "out":Ljavax/crypto/Cipher;
    .end local v3    # "cOut":Ljavax/crypto/CipherOutputStream;
    .end local v4    # "dOut":Ljava/io/DataOutputStream;
    .end local v16    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "iterationCount":I
    .restart local v7    # "iterationCount":I
    :cond_2
    move/from16 v18, v7

    .end local v7    # "iterationCount":I
    .restart local v18    # "iterationCount":I
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    invoke-direct {v2, v9}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .end local v10    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v11    # "dIn":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    .end local p1    # "password":[C
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 322
    .end local v0    # "k":Ljava/security/Key;
    .end local v12    # "salt":[B
    .end local v13    # "cipher":Ljavax/crypto/Cipher;
    .end local v14    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v15    # "x":Ljava/lang/Exception;
    .end local v18    # "iterationCount":I
    .restart local v10    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v11    # "dIn":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    .restart local p1    # "password":[C
    :catch_2
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    invoke-direct {v2, v9}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v11    # "dIn":Ljava/io/DataInputStream;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "forget something!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getType()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    return v0
.end method
