.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$DebugApp;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DebugApp"
.end annotation


# static fields
.field public static final blacklist DEBUG_APP:J = 0x10900000001L

.field public static final blacklist DEBUG_TRANSIENT:J = 0x10800000003L

.field public static final blacklist ORIG_DEBUG_APP:J = 0x10900000002L

.field public static final blacklist ORIG_WAIT_FOR_DEBUGGER:J = 0x10800000004L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;

    .line 124
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$DebugApp;->this$0:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
