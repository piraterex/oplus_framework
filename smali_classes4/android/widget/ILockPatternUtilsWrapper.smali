.class public interface abstract Landroid/widget/ILockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "ILockPatternUtilsWrapper.java"


# virtual methods
.method public blacklist getBoolean(Ljava/lang/String;ZI)Z
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDebug()Z
    .locals 1

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLockPatternUtilsExt()Lcom/android/internal/widget/ILockPatternUtilsExt;
    .locals 1

    .line 8
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .line 27
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .locals 1

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setBoolean(Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 23
    return-void
.end method

.method public blacklist setLong(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .line 30
    return-void
.end method
