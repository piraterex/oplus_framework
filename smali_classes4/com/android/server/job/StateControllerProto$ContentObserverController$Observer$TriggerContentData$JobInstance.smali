.class public final Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData$JobInstance;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JobInstance"
.end annotation


# static fields
.field public static final blacklist CHANGED_AUTHORITIES:J = 0x20900000005L

.field public static final blacklist CHANGED_URIS:J = 0x20900000006L

.field public static final blacklist INFO:J = 0x10b00000001L

.field public static final blacklist SOURCE_UID:J = 0x10500000002L

.field public static final blacklist TRIGGER_CONTENT_MAX_DELAY_MS:J = 0x10300000004L

.field public static final blacklist TRIGGER_CONTENT_UPDATE_DELAY_MS:J = 0x10300000003L


# instance fields
.field final synthetic blacklist this$3:Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData;)V
    .locals 0
    .param p1, "this$3"    # Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData;

    .line 127
    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData$JobInstance;->this$3:Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
