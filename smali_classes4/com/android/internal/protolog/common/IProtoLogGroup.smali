.class public interface abstract Lcom/android/internal/protolog/common/IProtoLogGroup;
.super Ljava/lang/Object;
.source "IProtoLogGroup.java"


# virtual methods
.method public abstract blacklist getTag()Ljava/lang/String;
.end method

.method public abstract blacklist isEnabled()Z
.end method

.method public blacklist isLogToAny()Z
    .locals 1

    .line 42
    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract blacklist isLogToLogcat()Z
.end method

.method public abstract blacklist isLogToProto()Z
.end method

.method public abstract blacklist name()Ljava/lang/String;
.end method

.method public abstract blacklist setLogToLogcat(Z)V
.end method

.method public abstract blacklist setLogToProto(Z)V
.end method
