.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$LruProcesses;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LruProcesses"
.end annotation


# static fields
.field public static final blacklist LIST:J = 0x20b00000004L

.field public static final blacklist NON_ACT_AT:J = 0x10500000002L

.field public static final blacklist NON_SVC_AT:J = 0x10500000003L

.field public static final blacklist SIZE:J = 0x10500000001L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;

    .line 11
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$LruProcesses;->this$0:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
