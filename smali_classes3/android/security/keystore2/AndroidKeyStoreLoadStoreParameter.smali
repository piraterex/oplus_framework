.class public Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;
.super Ljava/lang/Object;
.source "AndroidKeyStoreLoadStoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final blacklist mNamespace:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 0
    .param p1, "namespace"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;->mNamespace:I

    .line 33
    return-void
.end method


# virtual methods
.method blacklist getNamespace()I
    .locals 1

    .line 41
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;->mNamespace:I

    return v0
.end method

.method public whitelist test-api getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
