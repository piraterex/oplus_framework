.class public interface abstract Lcom/android/internal/os/IZygoteArgumentsExt;
.super Ljava/lang/Object;
.source "IZygoteArgumentsExt.java"


# virtual methods
.method public blacklist canParseArg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist doParseArg(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    return-void
.end method

.method public blacklist getOplusHiddenApiExemptions()[Ljava/lang/String;
    .locals 1

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method
