.class public final synthetic Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsConfigImplBase;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsConfigImplBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;->f$0:Landroid/telephony/ims/stub/ImsConfigImplBase;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;->f$0:Landroid/telephony/ims/stub/ImsConfigImplBase;

    check-cast p1, Landroid/telephony/ims/aidl/IRcsConfigCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->lambda$onNotifyRcsAutoConfigurationReceived$2$android-telephony-ims-stub-ImsConfigImplBase(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    return-void
.end method
