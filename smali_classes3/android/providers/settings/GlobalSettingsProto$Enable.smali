.class public final Landroid/providers/settings/GlobalSettingsProto$Enable;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Enable"
.end annotation


# static fields
.field public static final blacklist ACCESSIBILITY_GLOBAL_GESTURE_ENABLED:J = 0x10b00000001L

.field public static final blacklist CACHE_QUOTA_CALCULATION:J = 0x10b00000006L

.field public static final blacklist CELLULAR_ON_BOOT:J = 0x10b00000004L

.field public static final blacklist DELETION_HELPER_NO_THRESHOLD_TOGGLE:J = 0x10b00000007L

.field public static final blacklist DISKSTATS_LOGGING:J = 0x10b00000005L

.field public static final blacklist EPHEMERAL_FEATURE:J = 0x10b00000003L

.field public static final blacklist GNSS_RAW_MEAS_FULL_TRACKING:J = 0x10b00000008L

.field public static final blacklist GPU_DEBUG_LAYERS:J = 0x10b00000002L


# instance fields
.field final synthetic blacklist this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;

    .line 491
    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Enable;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
