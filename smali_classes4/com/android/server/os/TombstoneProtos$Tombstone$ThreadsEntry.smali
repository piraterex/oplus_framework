.class public final Lcom/android/server/os/TombstoneProtos$Tombstone$ThreadsEntry;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos$Tombstone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ThreadsEntry"
.end annotation


# static fields
.field public static final blacklist KEY:J = 0x10d00000001L

.field public static final blacklist VALUE:J = 0x10b00000002L


# instance fields
.field final synthetic blacklist this$1:Lcom/android/server/os/TombstoneProtos$Tombstone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/os/TombstoneProtos$Tombstone;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/os/TombstoneProtos$Tombstone;

    .line 19
    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$Tombstone$ThreadsEntry;->this$1:Lcom/android/server/os/TombstoneProtos$Tombstone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
