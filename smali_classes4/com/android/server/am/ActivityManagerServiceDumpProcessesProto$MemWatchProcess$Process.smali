.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Process"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process$MemStats;
    }
.end annotation


# static fields
.field public static final blacklist MEM_STATS:J = 0x20b00000002L

.field public static final blacklist NAME:J = 0x10900000001L


# instance fields
.field final synthetic blacklist this$1:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;

    .line 144
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process;->this$1:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
