.class public abstract Landroid/app/VrStateCallback;
.super Ljava/lang/Object;
.source "VrStateCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPersistentVrStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 33
    return-void
.end method

.method public whitelist onVrStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 40
    return-void
.end method
