.class public final Landroid/os/CpuInfoProto$CpuUsage;
.super Ljava/lang/Object;
.source "CpuInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CpuUsage"
.end annotation


# static fields
.field public static final greylist-max-o CPU:J = 0x10500000001L

.field public static final greylist-max-o HOST:J = 0x10500000009L

.field public static final greylist-max-o IDLE:J = 0x10500000005L

.field public static final greylist-max-o IOW:J = 0x10500000006L

.field public static final greylist-max-o IRQ:J = 0x10500000007L

.field public static final greylist-max-o NICE:J = 0x10500000003L

.field public static final greylist-max-o SIRQ:J = 0x10500000008L

.field public static final greylist-max-o SYS:J = 0x10500000004L

.field public static final greylist-max-o USER:J = 0x10500000002L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/CpuInfoProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/CpuInfoProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/CpuInfoProto;

    .line 51
    iput-object p1, p0, Landroid/os/CpuInfoProto$CpuUsage;->this$0:Landroid/os/CpuInfoProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
