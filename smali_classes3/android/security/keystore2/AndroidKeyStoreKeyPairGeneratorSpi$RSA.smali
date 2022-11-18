.class public Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$RSA;
.super Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.source "AndroidKeyStoreKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RSA"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 101
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;-><init>(I)V

    .line 102
    return-void
.end method
