.class public final Landroid/security/KeyStoreParameter$Builder;
.super Ljava/lang/Object;
.source "KeyStoreParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-eqz p1, :cond_0

    .line 119
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/security/KeyStoreParameter;
    .locals 3

    .line 153
    new-instance v0, Landroid/security/KeyStoreParameter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreParameter;-><init>(ILandroid/security/KeyStoreParameter-IA;)V

    return-object v0
.end method

.method public whitelist setEncryptionRequired(Z)Landroid/security/KeyStoreParameter$Builder;
    .locals 0
    .param p1, "required"    # Z

    .line 142
    return-object p0
.end method
