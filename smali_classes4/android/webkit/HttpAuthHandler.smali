.class public Landroid/webkit/HttpAuthHandler;
.super Landroid/os/Handler;
.source "HttpAuthHandler.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 0

    .line 55
    return-void
.end method

.method public whitelist proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 63
    return-void
.end method

.method public whitelist useHttpAuthUsernamePassword()Z
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method
