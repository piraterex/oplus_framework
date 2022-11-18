.class public interface abstract Lcom/android/internal/telephony/ISmsApplicationExt;
.super Ljava/lang/Object;
.source "ISmsApplicationExt.java"


# static fields
.field public static final blacklist MAIN_USER_ID:I


# virtual methods
.method public blacklist getUserId()I
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserIdEqualMainUserId()Z
    .locals 1

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist oemPackageName()[Ljava/lang/String;
    .locals 1

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 14
    return-void
.end method

.method public blacklist shouldWriteMessageForPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 11
    const/4 v0, 0x1

    return v0
.end method
