.class public abstract Landroid/telephony/SmsManager$FinancialSmsCallback;
.super Ljava/lang/Object;
.source "SmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FinancialSmsCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 2949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onFinancialSmsMessages(Landroid/database/CursorWindow;)V
.end method
