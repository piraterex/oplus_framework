.class public final Landroid/os/KernelWakeSourcesProto$WakeupSource;
.super Ljava/lang/Object;
.source "KernelWakeSourcesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/KernelWakeSourcesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeupSource"
.end annotation


# static fields
.field public static final greylist-max-o ACTIVE_COUNT:J = 0x10500000002L

.field public static final greylist-max-o ACTIVE_SINCE:J = 0x10300000006L

.field public static final greylist-max-o EVENT_COUNT:J = 0x10500000003L

.field public static final greylist-max-o EXPIRE_COUNT:J = 0x10500000005L

.field public static final greylist-max-o LAST_CHANGE:J = 0x10300000009L

.field public static final greylist-max-o MAX_TIME:J = 0x10300000008L

.field public static final greylist-max-o NAME:J = 0x10900000001L

.field public static final greylist-max-o PREVENT_SUSPEND_TIME:J = 0x1030000000aL

.field public static final greylist-max-o TOTAL_TIME:J = 0x10300000007L

.field public static final greylist-max-o WAKEUP_COUNT:J = 0x10500000004L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/KernelWakeSourcesProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/KernelWakeSourcesProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/KernelWakeSourcesProto;

    .line 11
    iput-object p1, p0, Landroid/os/KernelWakeSourcesProto$WakeupSource;->this$0:Landroid/os/KernelWakeSourcesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
