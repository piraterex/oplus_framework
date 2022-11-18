.class public abstract Landroid/telephony/TelephonyManager$UssdResponseCallback;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UssdResponseCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 10414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceiveUssdResponse(Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "response"    # Ljava/lang/CharSequence;

    .line 10428
    return-void
.end method

.method public whitelist onReceiveUssdResponseFailed(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "failureCode"    # I

    .line 10440
    return-void
.end method
