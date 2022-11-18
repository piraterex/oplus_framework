.class public Lcom/android/server/SystemConfigSocExtImpl;
.super Ljava/lang/Object;
.source "SystemConfigSocExtImpl.java"

# interfaces
.implements Lcom/android/server/ISystemConfigSocExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "service"    # Ljava/lang/Object;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public blacklist shouldAppendPermGid(I)Z
    .locals 1
    .param p1, "gid"    # I

    .line 28
    const/4 v0, 0x1

    return v0
.end method
