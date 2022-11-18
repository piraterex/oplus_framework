.class public final Lcom/android/server/os/TombstoneProtos$Tombstone;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Tombstone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/TombstoneProtos$Tombstone$ThreadsEntry;
    }
.end annotation


# static fields
.field public static final blacklist ABORT_MESSAGE:J = 0x1090000000eL

.field public static final blacklist ARCH:J = 0x10e00000001L

.field public static final blacklist BUILD_FINGERPRINT:J = 0x10900000002L

.field public static final blacklist CAUSES:J = 0x20b0000000fL

.field public static final blacklist COMMAND_LINE:J = 0x20900000009L

.field public static final blacklist LOG_BUFFERS:J = 0x20b00000012L

.field public static final blacklist MEMORY_MAPPINGS:J = 0x20b00000011L

.field public static final blacklist OPEN_FDS:J = 0x20b00000013L

.field public static final blacklist PID:J = 0x10d00000005L

.field public static final blacklist PROCESS_UPTIME:J = 0x10d00000014L

.field public static final blacklist REVISION:J = 0x10900000003L

.field public static final blacklist SELINUX_LABEL:J = 0x10900000008L

.field public static final blacklist SIGNAL_INFO:J = 0x10b0000000aL

.field public static final blacklist THREADS:J = 0x20b00000010L

.field public static final blacklist TID:J = 0x10d00000006L

.field public static final blacklist TIMESTAMP:J = 0x10900000004L

.field public static final blacklist UID:J = 0x10d00000007L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/os/TombstoneProtos;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;

    .line 16
    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$Tombstone;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
