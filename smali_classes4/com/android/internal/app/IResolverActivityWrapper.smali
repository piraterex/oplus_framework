.class public interface abstract Lcom/android/internal/app/IResolverActivityWrapper;
.super Ljava/lang/Object;
.source "IResolverActivityWrapper.java"


# virtual methods
.method public blacklist getLaunchedFromUid()I
    .locals 1

    .line 32
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public blacklist getPersonalTabLabel()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;
    .locals 1

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWorkTabLabel()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, ""

    return-object v0
.end method

.method public blacklist prepareIntentForCrossProfileLaunch(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 35
    return-void
.end method
