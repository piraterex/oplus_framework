.class public Lcom/oplus/eventhub/sdk/aidl/EventType$GeoFenceExtra;
.super Ljava/lang/Object;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/eventhub/sdk/aidl/EventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GeoFenceExtra"
.end annotation


# static fields
.field public static final whitelist BUNDLE_KEY_ACTIVATES_ACTION:Ljava/lang/String; = "activatesAction"

.field public static final whitelist BUNDLE_KEY_CURRENT_LOCATION:Ljava/lang/String; = "current_location"

.field public static final whitelist BUNDLE_KEY_EXPIRATION:Ljava/lang/String; = "expiration"

.field public static final whitelist BUNDLE_KEY_GEOFENCES:Ljava/lang/String; = "geofences"

.field public static final whitelist BUNDLE_KEY_MAX_CALLBACK_TIME_INTERVAL:Ljava/lang/String; = "maxCallbackTimeInterval"


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/eventhub/sdk/aidl/EventType;


# direct methods
.method public constructor whitelist <init>(Lcom/oplus/eventhub/sdk/aidl/EventType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/eventhub/sdk/aidl/EventType;

    .line 142
    iput-object p1, p0, Lcom/oplus/eventhub/sdk/aidl/EventType$GeoFenceExtra;->this$0:Lcom/oplus/eventhub/sdk/aidl/EventType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
