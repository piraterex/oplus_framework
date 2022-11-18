.class public Lcom/oplus/eventhub/sdk/aidl/EventType;
.super Ljava/lang/Object;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/eventhub/sdk/aidl/EventType$GeoFenceExtra;,
        Lcom/oplus/eventhub/sdk/aidl/EventType$NextAppExtra;,
        Lcom/oplus/eventhub/sdk/aidl/EventType$State;
    }
.end annotation


# static fields
.field public static final whitelist ACTIVITY_MODE_IN_ELEVATOR:I = 0x138

.field public static final whitelist ACTIVITY_MODE_IN_FOUR_WHEELER_VEHICLE:I = 0x137

.field public static final whitelist ACTIVITY_MODE_IN_RAIL_VEHICLE:I = 0x135

.field public static final whitelist ACTIVITY_MODE_IN_ROAD_VEHICLE:I = 0x134

.field public static final whitelist ACTIVITY_MODE_IN_TRANSPORTATION:I = 0x139

.field public static final whitelist ACTIVITY_MODE_IN_TWO_WHEELER_VEHICLE:I = 0x136

.field public static final whitelist ACTIVITY_MODE_IN_VEHICLE:I = 0x12c

.field public static final whitelist ACTIVITY_MODE_ON_BICYCLE:I = 0x12d

.field public static final whitelist ACTIVITY_MODE_ON_FOOT:I = 0x12e

.field public static final whitelist ACTIVITY_MODE_RUNNING:I = 0x133

.field public static final whitelist ACTIVITY_MODE_STILL:I = 0x12f

.field public static final whitelist ACTIVITY_MODE_TILTING:I = 0x131

.field public static final whitelist ACTIVITY_MODE_UNKNOWN_ACTIVITY:I = 0x130

.field public static final whitelist ACTIVITY_MODE_WALKING:I = 0x132

.field public static final blacklist CHANGED_STATE:Ljava/lang/String; = "changed_state"

.field public static final blacklist CHANGED_STATE_VALUE:Ljava/lang/String; = "changed_state_value"

.field public static final blacklist CHANGED_TYPE:Ljava/lang/String; = "changed_type"

.field public static final whitelist DEVICE_EVENT_BATTERY_CHANGED:I = 0x65

.field public static final whitelist DEVICE_EVENT_CHARGING:I = 0x66

.field public static final whitelist DEVICE_EVENT_EBOOK_FRONT:I = 0x6e

.field public static final whitelist DEVICE_EVENT_GPS:I = 0x67

.field public static final whitelist DEVICE_EVENT_NFC:I = 0x6c

.field public static final whitelist DEVICE_EVENT_NOTIFICATION:I = 0x6a

.field public static final whitelist DEVICE_EVENT_OTG:I = 0x6b

.field public static final whitelist DEVICE_EVENT_PACKAGE_ADD:I = 0x6d

.field public static final whitelist DEVICE_EVENT_POWER_SAVING:I = 0x64

.field public static final whitelist DEVICE_EVENT_SENSOR:I = 0x68

.field public static final whitelist DEVICE_EVENT_WAKELOCK:I = 0x69

.field public static final whitelist GEOFENCE:I = 0x2712

.field public static final whitelist INVALID:I = -0x1

.field public static final whitelist NEXT_APP_EVENT:I = 0x2711

.field public static final whitelist SCENE_MODE_AUDIO_CALL:I = 0xd0

.field public static final whitelist SCENE_MODE_AUDIO_IN:I = 0xcb

.field public static final whitelist SCENE_MODE_AUDIO_OUT:I = 0xca

.field public static final whitelist SCENE_MODE_CAMERA:I = 0xcc

.field public static final blacklist SCENE_MODE_CONFERENCE:I = 0xde

.field public static final whitelist SCENE_MODE_DOWNLOAD:I = 0xce

.field public static final whitelist SCENE_MODE_FILE_DOWNLOAD:I = 0xd2

.field public static final whitelist SCENE_MODE_FILE_UPLOAD:I = 0xd6

.field public static final whitelist SCENE_MODE_GAME:I = 0xd3

.field public static final whitelist SCENE_MODE_HOLIDAY:I = 0xd5

.field public static final whitelist SCENE_MODE_LOCATION:I = 0xc9

.field public static final whitelist SCENE_MODE_READING:I = 0xcf

.field public static final whitelist SCENE_MODE_VIDEO:I = 0xcd

.field public static final whitelist SCENE_MODE_VIDEO_CALL:I = 0xd1

.field public static final whitelist SCENE_MODE_VIDEO_LIVE:I = 0xd4

.field public static final whitelist sEventTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/oplus/eventhub/sdk/aidl/EventType$1;

    invoke-direct {v0}, Lcom/oplus/eventhub/sdk/aidl/EventType$1;-><init>()V

    sput-object v0, Lcom/oplus/eventhub/sdk/aidl/EventType;->sEventTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
