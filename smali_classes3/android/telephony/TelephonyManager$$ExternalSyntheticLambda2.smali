.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/telephony/UiccPortInfo;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->lambda$getFirstActivePortIndex$8(Landroid/telephony/UiccPortInfo;)Z

    move-result p1

    return p1
.end method
