.class public interface abstract Lcom/android/internal/widget/ILockPatternUtilsExt;
.super Ljava/lang/Object;
.source "ILockPatternUtilsExt.java"


# virtual methods
.method public blacklist getLockoutAttemptDeadline(ILcom/android/internal/widget/LockPatternUtils;)J
    .locals 2
    .param p1, "userId"    # I
    .param p2, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 31
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getTimeoutFlag(ILcom/android/internal/widget/LockPatternUtils;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist savePasswordLenght(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .locals 0
    .param p1, "resover"    # Landroid/content/ContentResolver;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "userId"    # I

    .line 38
    return-void
.end method

.method public blacklist setLockoutAttemptDeadline(IJILcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "deadline"    # J
    .param p4, "timeoutMs"    # I
    .param p5, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 35
    return-void
.end method

.method public blacklist setTimeoutFlag(ZILcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "flag"    # Z
    .param p2, "userId"    # I
    .param p3, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 28
    return-void
.end method
