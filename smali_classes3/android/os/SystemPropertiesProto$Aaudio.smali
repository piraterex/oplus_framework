.class public final Landroid/os/SystemPropertiesProto$Aaudio;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Aaudio"
.end annotation


# static fields
.field public static final greylist-max-o HW_BURST_MIN_USEC:J = 0x10500000001L

.field public static final greylist-max-o MINIMUM_SLEEP_USEC:J = 0x10500000002L

.field public static final greylist-max-o MIXER_BURSTS:J = 0x10500000003L

.field public static final greylist-max-o MMAP_EXCLUSIVE_POLICY:J = 0x10500000004L

.field public static final greylist-max-o MMAP_POLICY:J = 0x10500000005L

.field public static final greylist-max-o WAKEUP_DELAY_USEC:J = 0x10500000006L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/SystemPropertiesProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemPropertiesProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/SystemPropertiesProto;

    .line 42
    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Aaudio;->this$0:Landroid/os/SystemPropertiesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
