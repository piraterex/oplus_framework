.class public final Lcom/android/server/os/TombstoneProtos$HeapObject;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HeapObject"
.end annotation


# static fields
.field public static final blacklist ADDRESS:J = 0x10400000001L

.field public static final blacklist ALLOCATION_BACKTRACE:J = 0x20b00000004L

.field public static final blacklist ALLOCATION_TID:J = 0x10400000003L

.field public static final blacklist DEALLOCATION_BACKTRACE:J = 0x20b00000006L

.field public static final blacklist DEALLOCATION_TID:J = 0x10400000005L

.field public static final blacklist SIZE:J = 0x10400000002L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/os/TombstoneProtos;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;

    .line 118
    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$HeapObject;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
