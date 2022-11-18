.class public Lcom/oplus/eventhub/sdk/aidl/EventType$State;
.super Ljava/lang/Object;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/eventhub/sdk/aidl/EventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "State"
.end annotation


# static fields
.field public static final whitelist ENTER:I = 0x0

.field public static final whitelist EXIT:I = 0x1

.field public static final whitelist UPDATE:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/eventhub/sdk/aidl/EventType;


# direct methods
.method public constructor whitelist <init>(Lcom/oplus/eventhub/sdk/aidl/EventType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/eventhub/sdk/aidl/EventType;

    .line 129
    iput-object p1, p0, Lcom/oplus/eventhub/sdk/aidl/EventType$State;->this$0:Lcom/oplus/eventhub/sdk/aidl/EventType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
