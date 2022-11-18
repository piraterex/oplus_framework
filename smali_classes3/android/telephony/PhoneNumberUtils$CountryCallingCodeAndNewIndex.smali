.class Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountryCallingCodeAndNewIndex"
.end annotation


# instance fields
.field public final greylist-max-o countryCallingCode:I

.field public final greylist-max-o newIndex:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .locals 0
    .param p1, "countryCode"    # I
    .param p2, "newIndex"    # I

    .line 3068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3069
    iput p1, p0, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .line 3070
    iput p2, p0, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 3071
    return-void
.end method
