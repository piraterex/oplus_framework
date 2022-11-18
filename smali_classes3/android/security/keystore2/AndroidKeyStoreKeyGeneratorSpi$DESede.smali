.class public Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$DESede;
.super Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESede"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 74
    const/16 v0, 0x21

    const/16 v1, 0xa8

    invoke-direct {p0, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;-><init>(II)V

    .line 75
    return-void
.end method
