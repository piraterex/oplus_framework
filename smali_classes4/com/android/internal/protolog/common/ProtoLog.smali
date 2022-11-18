.class public Lcom/android/internal/protolog/common/ProtoLog;
.super Ljava/lang/Object;
.source "ProtoLog.java"


# static fields
.field public static blacklist REQUIRE_PROTOLOGTOOL:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 51
    sget-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-nez v0, :cond_0

    .line 55
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ProtoLog calls MUST be processed with ProtoLogTool"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist e(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 111
    sget-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ProtoLog calls MUST be processed with ProtoLogTool"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist i(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 81
    sget-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ProtoLog calls MUST be processed with ProtoLogTool"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 66
    sget-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ProtoLog calls MUST be processed with ProtoLogTool"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 96
    sget-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-nez v0, :cond_0

    .line 100
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ProtoLog calls MUST be processed with ProtoLogTool"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 126
    sget-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-nez v0, :cond_0

    .line 130
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ProtoLog calls MUST be processed with ProtoLogTool"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
