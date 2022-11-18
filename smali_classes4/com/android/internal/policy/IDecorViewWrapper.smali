.class public interface abstract Lcom/android/internal/policy/IDecorViewWrapper;
.super Ljava/lang/Object;
.source "IDecorViewWrapper.java"


# virtual methods
.method public blacklist getExtImpl()Lcom/android/internal/policy/IDecorViewExt;
    .locals 1

    .line 5
    new-instance v0, Lcom/android/internal/policy/IDecorViewWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/IDecorViewWrapper$1;-><init>(Lcom/android/internal/policy/IDecorViewWrapper;)V

    return-object v0
.end method

.method public blacklist getWindow()Lcom/android/internal/policy/PhoneWindow;
    .locals 1

    .line 9
    const/4 v0, 0x0

    return-object v0
.end method
