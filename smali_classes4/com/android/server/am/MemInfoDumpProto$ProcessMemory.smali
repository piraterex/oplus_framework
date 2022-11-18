.class public final Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProcessMemory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$AppSummary;,
        Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$HeapInfo;,
        Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$MemoryInfo;
    }
.end annotation


# static fields
.field public static final blacklist APP_SUMMARY:J = 0x10b00000009L

.field public static final blacklist DALVIK_DETAILS:J = 0x20b00000008L

.field public static final blacklist DALVIK_HEAP:J = 0x10b00000004L

.field public static final blacklist NATIVE_HEAP:J = 0x10b00000003L

.field public static final blacklist OTHER_HEAPS:J = 0x20b00000005L

.field public static final blacklist PID:J = 0x10500000001L

.field public static final blacklist PROCESS_NAME:J = 0x10900000002L

.field public static final blacklist TOTAL_HEAP:J = 0x10b00000007L

.field public static final blacklist UNKNOWN_HEAP:J = 0x10b00000006L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/am/MemInfoDumpProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/MemInfoDumpProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MemInfoDumpProto;

    .line 11
    iput-object p1, p0, Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;->this$0:Lcom/android/server/am/MemInfoDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
