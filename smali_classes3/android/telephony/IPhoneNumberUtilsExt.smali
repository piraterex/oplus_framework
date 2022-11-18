.class public interface abstract Landroid/telephony/IPhoneNumberUtilsExt;
.super Ljava/lang/Object;
.source "IPhoneNumberUtilsExt.java"


# virtual methods
.method public whitelist getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "number"    # Ljava/lang/String;

    .line 8
    return-object p3
.end method

.method public whitelist stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 12
    return-object p1
.end method
