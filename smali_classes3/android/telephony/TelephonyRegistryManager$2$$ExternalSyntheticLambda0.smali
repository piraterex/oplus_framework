.class public final synthetic Landroid/telephony/TelephonyRegistryManager$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyRegistryManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    invoke-static {v0}, Landroid/telephony/TelephonyRegistryManager$2;->lambda$onSubscriptionsChanged$0(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V

    return-void
.end method
