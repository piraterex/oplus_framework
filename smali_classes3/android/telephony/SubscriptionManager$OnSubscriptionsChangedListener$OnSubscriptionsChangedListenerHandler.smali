.class Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;
.super Landroid/os/Handler;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSubscriptionsChangedListenerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 0

    .line 1281
    iput-object p1, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;->this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1282
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1283
    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1285
    iput-object p1, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;->this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1286
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1287
    return-void
.end method
