.class Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$GenerateKeyPairHelperResult;
.super Ljava/lang/Object;
.source "AndroidKeyStoreKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenerateKeyPairHelperResult"
.end annotation


# instance fields
.field public final blacklist keyPair:Ljava/security/KeyPair;

.field public final blacklist rkpStatus:I


# direct methods
.method private constructor blacklist <init>(ILjava/security/KeyPair;)V
    .locals 0
    .param p1, "rkpStatus"    # I
    .param p2, "keyPair"    # Ljava/security/KeyPair;

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$GenerateKeyPairHelperResult;->rkpStatus:I

    .line 654
    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$GenerateKeyPairHelperResult;->keyPair:Ljava/security/KeyPair;

    .line 655
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/security/KeyPair;Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$GenerateKeyPairHelperResult-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$GenerateKeyPairHelperResult;-><init>(ILjava/security/KeyPair;)V

    return-void
.end method
