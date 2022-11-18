.class public final Lcom/android/server/os/TombstoneProtos$MemoryMapping;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemoryMapping"
.end annotation


# static fields
.field public static final blacklist BEGIN_ADDRESS:J = 0x10400000001L

.field public static final blacklist BUILD_ID:J = 0x10900000008L

.field public static final blacklist END_ADDRESS:J = 0x10400000002L

.field public static final blacklist EXECUTE:J = 0x10800000006L

.field public static final blacklist LOAD_BIAS:J = 0x10400000009L

.field public static final blacklist MAPPING_NAME:J = 0x10900000007L

.field public static final blacklist OFFSET:J = 0x10400000003L

.field public static final blacklist READ:J = 0x10800000004L

.field public static final blacklist WRITE:J = 0x10800000005L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/os/TombstoneProtos;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;

    .line 278
    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$MemoryMapping;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
