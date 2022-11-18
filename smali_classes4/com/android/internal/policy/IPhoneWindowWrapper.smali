.class public interface abstract Lcom/android/internal/policy/IPhoneWindowWrapper;
.super Ljava/lang/Object;
.source "IPhoneWindowWrapper.java"


# virtual methods
.method public blacklist getDecorView()Lcom/android/internal/policy/DecorView;
    .locals 1

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getExtImpl()Lcom/android/internal/policy/IPhoneWindowExt;
    .locals 1

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 15
    const-string v0, ""

    return-object v0
.end method

.method public blacklist isForcedNavigationBarColor()Z
    .locals 1

    .line 8
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setForcedNavigationBarColor(Z)V
    .locals 0
    .param p1, "isForced"    # Z

    .line 5
    return-void
.end method

.method public blacklist setForcedStatusBarColor(Z)V
    .locals 0
    .param p1, "isForced"    # Z

    .line 12
    return-void
.end method
