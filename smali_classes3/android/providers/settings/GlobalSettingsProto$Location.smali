.class public final Landroid/providers/settings/GlobalSettingsProto$Location;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Location"
.end annotation


# static fields
.field public static final blacklist BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x10b00000001L

.field public static final blacklist BACKGROUND_THROTTLE_PACKAGE_WHITELIST:J = 0x10b00000003L

.field public static final blacklist BACKGROUND_THROTTLE_PROXIMITY_ALERT_INTERVAL_MS:J = 0x10b00000002L

.field public static final blacklist GLOBAL_KILL_SWITCH:J = 0x10b00000005L

.field public static final blacklist GNSS_HAL_LOCATION_REQUEST_DURATION_MILLIS:J = 0x10b00000007L

.field public static final blacklist GNSS_SATELLITE_BLOCKLIST:J = 0x10b00000006L

.field public static final blacklist IGNORE_SETTINGS_PACKAGE_WHITELIST:J = 0x10b00000008L

.field public static final blacklist SETTINGS_LINK_TO_PERMISSIONS_ENABLED:J = 0x10b00000004L


# instance fields
.field final synthetic blacklist this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;

    .line 686
    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Location;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
