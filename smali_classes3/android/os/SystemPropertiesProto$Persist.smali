.class public final Landroid/os/SystemPropertiesProto$Persist;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Persist"
.end annotation


# static fields
.field public static final greylist-max-o CONFIG_CALIBRATION_FAC:J = 0x10900000001L

.field public static final greylist-max-o DBG_VOLTE_AVAIL_OVR:J = 0x10500000002L

.field public static final greylist-max-o DBG_VT_AVAIL_OVR:J = 0x10500000003L

.field public static final greylist-max-o DBG_WFC_AVAIL_OVR:J = 0x10500000004L

.field public static final greylist-max-o RADIO_AIRPLANE_MODE_ON:J = 0x10500000005L

.field public static final greylist-max-o RADIO_MULTISIM_CONFIG:J = 0x10900000006L

.field public static final greylist-max-o RCS_SUPPORTED:J = 0x10500000007L

.field public static final greylist-max-o SYS_CRASH_RCU:J = 0x10800000008L

.field public static final greylist-max-o SYS_DALVIK_VM_LIB_2:J = 0x10900000009L

.field public static final greylist-max-o SYS_SF_COLOR_SATURATION:J = 0x1020000000aL

.field public static final greylist-max-o SYS_TIMEZONE:J = 0x1090000000bL


# instance fields
.field final synthetic blacklist this$0:Landroid/os/SystemPropertiesProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemPropertiesProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/SystemPropertiesProto;

    .line 387
    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Persist;->this$0:Landroid/os/SystemPropertiesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
