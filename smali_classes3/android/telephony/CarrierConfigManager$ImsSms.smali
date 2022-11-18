.class public final Landroid/telephony/CarrierConfigManager$ImsSms;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsSms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CarrierConfigManager$ImsSms$SmsFormat;
    }
.end annotation


# static fields
.field public static final whitelist KEY_PREFIX:Ljava/lang/String; = "imssms."

.field public static final whitelist KEY_SMS_CSFB_RETRY_ON_FAILURE_BOOL:Ljava/lang/String; = "imssms.sms_csfb_retry_on_failure_bool"

.field public static final whitelist KEY_SMS_OVER_IMS_FORMAT_INT:Ljava/lang/String; = "imssms.sms_over_ims_format_int"

.field public static final whitelist KEY_SMS_OVER_IMS_SUPPORTED_BOOL:Ljava/lang/String; = "imssms.sms_over_ims_supported_bool"

.field public static final whitelist KEY_SMS_OVER_IMS_SUPPORTED_RATS_INT_ARRAY:Ljava/lang/String; = "imssms.sms_over_ims_supported_rats_int_array"

.field public static final whitelist SMS_FORMAT_3GPP:I = 0x0

.field public static final whitelist SMS_FORMAT_3GPP2:I = 0x1


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .locals 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsSms;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 6868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDefaults()Landroid/os/PersistableBundle;
    .locals 3

    .line 6931
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 6932
    .local v0, "defaults":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "imssms.sms_over_ims_supported_bool"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6933
    const-string/jumbo v1, "imssms.sms_csfb_retry_on_failure_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6935
    const-string/jumbo v1, "imssms.sms_over_ims_format_int"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 6937
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string/jumbo v2, "imssms.sms_over_ims_supported_rats_int_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 6944
    return-object v0

    :array_0
    .array-data 4
        0x3
        0x5
    .end array-data
.end method
