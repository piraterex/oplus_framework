.class public interface abstract Lcom/android/internal/protolog/IBaseProtoLogImplWrapper;
.super Ljava/lang/Object;
.source "IBaseProtoLogImplWrapper.java"


# virtual methods
.method public blacklist getLogGroups()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs blacklist setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I
    .locals 1
    .param p1, "setTextLogging"    # Z
    .param p2, "value"    # Z
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "groups"    # [Ljava/lang/String;

    .line 12
    const/4 v0, -0x1

    return v0
.end method
