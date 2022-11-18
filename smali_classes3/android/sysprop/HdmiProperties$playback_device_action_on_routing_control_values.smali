.class public final enum Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;
.super Ljava/lang/Enum;
.source "HdmiProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sysprop/HdmiProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "playback_device_action_on_routing_control_values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

.field public static final enum blacklist NONE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

.field public static final enum blacklist WAKE_UP_AND_SEND_ACTIVE_SOURCE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

.field public static final enum blacklist WAKE_UP_ONLY:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;


# instance fields
.field private final blacklist propValue:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 207
    new-instance v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string/jumbo v3, "none"

    invoke-direct {v0, v1, v2, v3}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->NONE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 208
    new-instance v1, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    const-string v3, "WAKE_UP_ONLY"

    const/4 v4, 0x1

    const-string/jumbo v5, "wake_up_only"

    invoke-direct {v1, v3, v4, v5}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->WAKE_UP_ONLY:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 209
    new-instance v3, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    const-string v5, "WAKE_UP_AND_SEND_ACTIVE_SOURCE"

    const/4 v6, 0x2

    const-string/jumbo v7, "wake_up_and_send_active_source"

    invoke-direct {v3, v5, v6, v7}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->WAKE_UP_AND_SEND_ACTIVE_SOURCE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 206
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->$VALUES:[Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "propValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 212
    iput-object p3, p0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->propValue:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 206
    const-class v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    return-object v0
.end method

.method public static blacklist values()[Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;
    .locals 1

    .line 206
    sget-object v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->$VALUES:[Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    invoke-virtual {v0}, [Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    return-object v0
.end method


# virtual methods
.method public blacklist getPropValue()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->propValue:Ljava/lang/String;

    return-object v0
.end method
