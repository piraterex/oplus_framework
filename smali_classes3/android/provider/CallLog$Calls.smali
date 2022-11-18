.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$Calls$MissedReason;
    }
.end annotation


# static fields
.field public static final greylist-max-o ADD_FOR_ALL_USERS:Ljava/lang/String; = "add_for_all_users"

.field public static final greylist-max-o ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final whitelist ANSWERED_EXTERNALLY_TYPE:I = 0x7

.field public static final whitelist AUTO_MISSED_EMERGENCY_CALL:J = 0x1L

.field public static final whitelist AUTO_MISSED_MAXIMUM_DIALING:J = 0x4L

.field public static final whitelist AUTO_MISSED_MAXIMUM_RINGING:J = 0x2L

.field public static final whitelist BLOCKED_TYPE:I = 0x6

.field public static final whitelist BLOCK_REASON:Ljava/lang/String; = "block_reason"

.field public static final whitelist BLOCK_REASON_BLOCKED_NUMBER:I = 0x3

.field public static final whitelist BLOCK_REASON_CALL_SCREENING_SERVICE:I = 0x1

.field public static final whitelist BLOCK_REASON_DIRECT_TO_VOICEMAIL:I = 0x2

.field public static final whitelist BLOCK_REASON_NOT_BLOCKED:I = 0x0

.field public static final whitelist BLOCK_REASON_NOT_IN_CONTACTS:I = 0x7

.field public static final whitelist BLOCK_REASON_PAY_PHONE:I = 0x6

.field public static final whitelist BLOCK_REASON_RESTRICTED_NUMBER:I = 0x5

.field public static final whitelist BLOCK_REASON_UNKNOWN_NUMBER:I = 0x4

.field public static final whitelist CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final whitelist CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final whitelist CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final whitelist CACHED_NAME:Ljava/lang/String; = "name"

.field public static final whitelist CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final whitelist CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final whitelist CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final whitelist CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final whitelist CACHED_PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field public static final whitelist CALL_SCREENING_APP_NAME:Ljava/lang/String; = "call_screening_app_name"

.field public static final whitelist CALL_SCREENING_COMPONENT_NAME:Ljava/lang/String; = "call_screening_component_name"

.field public static final whitelist COMPOSER_PHOTO_URI:Ljava/lang/String; = "composer_photo_uri"

.field public static final whitelist CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist CONTENT_URI_LIMIT_1:Landroid/net/Uri;

.field public static final whitelist CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final whitelist COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final whitelist DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final whitelist DATE:Ljava/lang/String; = "date"

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final whitelist DURATION:Ljava/lang/String; = "duration"

.field public static final whitelist EXTRA_CALL_TYPE_FILTER:Ljava/lang/String; = "android.provider.extra.CALL_TYPE_FILTER"

.field public static final whitelist FEATURES:Ljava/lang/String; = "features"

.field public static final whitelist FEATURES_ASSISTED_DIALING_USED:I = 0x10

.field public static final whitelist FEATURES_HD_CALL:I = 0x4

.field public static final whitelist FEATURES_PULLED_EXTERNALLY:I = 0x2

.field public static final whitelist FEATURES_RTT:I = 0x20

.field public static final whitelist FEATURES_VIDEO:I = 0x1

.field public static final whitelist FEATURES_VOLTE:I = 0x40

.field public static final whitelist FEATURES_WIFI:I = 0x8

.field public static final whitelist GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final whitelist INCOMING_TYPE:I = 0x1

.field public static final blacklist IS_PHONE_ACCOUNT_MIGRATION_PENDING:Ljava/lang/String; = "is_call_log_phone_account_migration_pending"

.field public static final whitelist IS_READ:Ljava/lang/String; = "is_read"

.field public static final whitelist LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final whitelist LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field public static final whitelist LOCATION:Ljava/lang/String; = "location"

.field public static final blacklist LOW_RING_VOLUME:I = 0x0

.field private static final greylist-max-o MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS:I = 0x2710

.field public static final whitelist MISSED_REASON:Ljava/lang/String; = "missed_reason"

.field public static final whitelist MISSED_REASON_NOT_MISSED:J = 0x0L

.field public static final whitelist MISSED_TYPE:I = 0x3

.field public static final whitelist NEW:Ljava/lang/String; = "new"

.field public static final whitelist NUMBER:Ljava/lang/String; = "number"

.field public static final whitelist NUMBER_PRESENTATION:Ljava/lang/String; = "presentation"

.field public static final whitelist OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final whitelist OUTGOING_TYPE:I = 0x2

.field public static final greylist-max-o PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final whitelist PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final greylist-max-o PHONE_ACCOUNT_HIDDEN:Ljava/lang/String; = "phone_account_hidden"

.field public static final whitelist PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final whitelist POST_DIAL_DIGITS:Ljava/lang/String; = "post_dial_digits"

.field public static final whitelist PRESENTATION_ALLOWED:I = 0x1

.field public static final whitelist PRESENTATION_PAYPHONE:I = 0x4

.field public static final whitelist PRESENTATION_RESTRICTED:I = 0x2

.field public static final whitelist PRESENTATION_UNAVAILABLE:I = 0x5

.field public static final whitelist PRESENTATION_UNKNOWN:I = 0x3

.field public static final whitelist PRIORITY:Ljava/lang/String; = "priority"

.field public static final whitelist PRIORITY_NORMAL:I = 0x0

.field public static final whitelist PRIORITY_URGENT:I = 0x1

.field public static final whitelist REJECTED_TYPE:I = 0x5

.field public static final greylist-max-o SHADOW_CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist SHORT_RING_THRESHOLD:J = 0x1388L

.field public static final whitelist SUBJECT:Ljava/lang/String; = "subject"

.field public static final greylist-max-o SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final whitelist TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final greylist-max-o TRANSCRIPTION_STATE:Ljava/lang/String; = "transcription_state"

.field public static final whitelist TYPE:Ljava/lang/String; = "type"

.field public static final whitelist USER_MISSED_CALL_FILTERS_TIMEOUT:J = 0x400000L

.field public static final whitelist USER_MISSED_CALL_SCREENING_SERVICE_SILENCED:J = 0x200000L

.field public static final whitelist USER_MISSED_DND_MODE:J = 0x40000L

.field public static final whitelist USER_MISSED_LOW_RING_VOLUME:J = 0x80000L

.field public static final blacklist USER_MISSED_NEVER_RANG:J = 0x800000L

.field public static final whitelist USER_MISSED_NO_ANSWER:J = 0x10000L

.field public static final whitelist USER_MISSED_NO_VIBRATE:J = 0x100000L

.field public static final whitelist USER_MISSED_SHORT_RING:J = 0x20000L

.field public static final whitelist VIA_NUMBER:Ljava/lang/String; = "via_number"

.field public static final whitelist VOICEMAIL_TYPE:I = 0x4

.field public static final whitelist VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 747
    nop

    .line 748
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 751
    nop

    .line 752
    const-string v1, "content://call_log_shadow/calls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .line 757
    nop

    .line 758
    const-string v1, "content://call_log/calls/filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 770
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 771
    const-string/jumbo v2, "limit"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 772
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    .line 821
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 822
    const-string v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 823
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 821
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addCall(Landroid/content/Context;Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/provider/CallLog$AddCallParams;

    .line 1685
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1687
    .local v9, "resolver":Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/provider/CallLog$Calls;->getLogAccountAddress(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v10

    .line 1689
    .local v10, "accountAddress":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPresentation(Landroid/provider/CallLog$AddCallParams;)I

    move-result v3

    invoke-static {v0, v3}, Landroid/provider/CallLog$Calls;->getLogNumberPresentation(Ljava/lang/String;I)I

    move-result v11

    .line 1690
    .local v11, "numberPresentation":I
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    const-string v3, ""

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 1691
    .local v0, "name":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    if-eq v11, v4, :cond_1

    .line 1692
    invoke-static {v2, v3}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fputmNumber(Landroid/provider/CallLog$AddCallParams;Ljava/lang/String;)V

    .line 1693
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1694
    const-string v0, ""

    move-object v12, v0

    goto :goto_1

    .line 1699
    :cond_1
    move-object v12, v0

    .end local v0    # "name":Ljava/lang/String;
    .local v12, "name":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .line 1700
    .local v0, "accountComponentString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1701
    .local v3, "accountId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1702
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 1703
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v13, v0

    move-object v14, v3

    goto :goto_2

    .line 1701
    :cond_2
    move-object v13, v0

    move-object v14, v3

    .line 1706
    .end local v0    # "accountComponentString":Ljava/lang/String;
    .end local v3    # "accountId":Ljava/lang/String;
    .local v13, "accountComponentString":Ljava/lang/String;
    .local v14, "accountId":Ljava/lang/String;
    :goto_2
    new-instance v0, Landroid/content/ContentValues;

    const/16 v3, 0xe

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    move-object v15, v0

    .line 1708
    .local v15, "values":Landroid/content/ContentValues;
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "number"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPostDialDigits(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "post_dial_digits"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmViaNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "via_number"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "presentation"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1712
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallType(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "type"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1713
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmFeatures(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "features"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1714
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmStart(Landroid/provider/CallLog$AddCallParams;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "date"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1715
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmDuration(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "duration"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1716
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmDataUsage(Landroid/provider/CallLog$AddCallParams;)J

    move-result-wide v5

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3

    .line 1717
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmDataUsage(Landroid/provider/CallLog$AddCallParams;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "data_usage"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1719
    :cond_3
    const-string/jumbo v0, "subscription_component_name"

    invoke-virtual {v15, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    const-string/jumbo v0, "subscription_id"

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const-string/jumbo v0, "phone_account_address"

    invoke-virtual {v15, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "new"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1723
    const-string/jumbo v0, "name"

    invoke-virtual {v15, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAddForAllUsers(Landroid/provider/CallLog$AddCallParams;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "add_for_all_users"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1726
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallType(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 1727
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmIsRead(Landroid/provider/CallLog$AddCallParams;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "is_read"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1730
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallBlockReason(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "block_reason"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1731
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallScreeningAppName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/CallLog$Calls;->charSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "call_screening_app_name"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallScreeningComponentName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "call_screening_component_name"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmMissedReason(Landroid/provider/CallLog$AddCallParams;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v3, "missed_reason"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1734
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPriority(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "priority"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1735
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmSubject(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "subject"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPictureUri(Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1737
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmPictureUri(Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "composer_photo_uri"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmIsPhoneAccountMigrationPending(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "is_call_log_phone_account_migration_pending"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1741
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallerInfo;->getContactId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_9

    .line 1750
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    const/4 v8, 0x2

    const-string v3, "_id"

    const/4 v7, 0x0

    if-eqz v0, :cond_6

    .line 1751
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 1752
    .local v0, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    new-array v3, v8, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v16

    .line 1755
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/CallerInfo;->getContactId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v7

    aput-object v0, v3, v4

    const/16 v16, 0x0

    .line 1752
    const-string v17, "contact_id =? AND data4 =?"

    move-object/from16 v18, v3

    move-object v3, v9

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v0

    move v0, v7

    .end local v0    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v17, "normalizedPhoneNumber":Ljava/lang/String;
    move-object/from16 v7, v18

    move-object/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1758
    .end local v17    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v3, "cursor":Landroid/database/Cursor;
    goto :goto_4

    .line 1759
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_6
    move v0, v7

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/CallerInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1760
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/CallerInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object/from16 v16, v5

    .line 1761
    .local v16, "phoneNumber":Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 1763
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1762
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v3

    .line 1766
    invoke-virtual {v3}, Landroid/telecom/CallerInfo;->getContactId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    const/4 v8, 0x0

    .line 1761
    const-string v17, "contact_id =?"

    move-object v3, v9

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1770
    .end local v16    # "phoneNumber":Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :goto_4
    if-eqz v3, :cond_9

    .line 1772
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1773
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1774
    .local v0, "dataId":Ljava/lang/String;
    invoke-static {v9, v0}, Landroid/provider/CallLog$Calls;->updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1775
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmDuration(Landroid/provider/CallLog$AddCallParams;)I

    move-result v4

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallType(Landroid/provider/CallLog$AddCallParams;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 1777
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1778
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v9, v0, v4}, Landroid/provider/CallLog$Calls;->updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1782
    .end local v0    # "dataId":Ljava/lang/String;
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1783
    goto :goto_5

    .line 1782
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1783
    throw v0

    .line 1809
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_9
    :goto_5
    const/4 v0, 0x0

    .line 1811
    .local v0, "result":Landroid/net/Uri;
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1812
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getProcessUserId()I

    move-result v4

    .line 1814
    .local v4, "currentUserId":I
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmAddForAllUsers(Landroid/provider/CallLog$AddCallParams;)Z

    move-result v5

    const-string/jumbo v7, "location"

    if-eqz v5, :cond_15

    .line 1815
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1820
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v2, v9, v5}, Landroid/provider/CallLog$Calls;->maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v5

    .line 1821
    .local v5, "locationUri":Landroid/net/Uri;
    if-eqz v5, :cond_a

    .line 1822
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    .end local v5    # "locationUri":Landroid/net/Uri;
    :cond_a
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v3, v5, v15}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 1829
    .local v5, "uriForSystem":Landroid/net/Uri;
    if-eqz v5, :cond_14

    .line 1830
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    const-string v6, "call_log_shadow"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object/from16 v19, v5

    goto/16 :goto_9

    .line 1836
    :cond_b
    if-nez v4, :cond_c

    .line 1837
    move-object v0, v5

    .line 1842
    :cond_c
    invoke-virtual {v3}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v6

    .line 1844
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 1845
    .local v8, "count":I
    const/16 v17, 0x0

    move/from16 v23, v17

    move-object/from16 v17, v0

    move/from16 v0, v23

    .local v0, "i":I
    .local v17, "result":Landroid/net/Uri;
    :goto_6
    if-ge v0, v8, :cond_13

    .line 1846
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/UserInfo;

    .line 1847
    .local v18, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v19, v5

    .end local v5    # "uriForSystem":Landroid/net/Uri;
    .local v19, "uriForSystem":Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 1848
    .local v5, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v20, v6

    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v20, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1850
    .local v6, "userId":I
    invoke-virtual {v5}, Landroid/os/UserHandle;->isSystem()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 1852
    move/from16 v22, v8

    goto :goto_8

    .line 1855
    :cond_d
    invoke-static {v1, v3, v6}, Landroid/provider/CallLog$Calls;->shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v21

    if-nez v21, :cond_e

    .line 1857
    move/from16 v22, v8

    goto :goto_8

    .line 1863
    :cond_e
    invoke-virtual {v3, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 1864
    invoke-virtual {v3, v5}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1865
    invoke-static {v2, v9, v5}, Landroid/provider/CallLog$Calls;->maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v21

    .line 1866
    .local v21, "locationUri":Landroid/net/Uri;
    if-eqz v21, :cond_f

    .line 1867
    move/from16 v22, v8

    .end local v8    # "count":I
    .local v22, "count":I
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1869
    .end local v22    # "count":I
    .restart local v8    # "count":I
    :cond_f
    move/from16 v22, v8

    .end local v8    # "count":I
    .restart local v22    # "count":I
    const/4 v8, 0x0

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/String;

    invoke-virtual {v15, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    :goto_7
    invoke-static {v1, v3, v5, v15}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 1873
    .local v8, "uri":Landroid/net/Uri;
    if-ne v6, v4, :cond_12

    .line 1874
    move-object/from16 v17, v8

    goto :goto_8

    .line 1864
    .end local v21    # "locationUri":Landroid/net/Uri;
    .end local v22    # "count":I
    .local v8, "count":I
    :cond_10
    move/from16 v22, v8

    .end local v8    # "count":I
    .restart local v22    # "count":I
    goto :goto_8

    .line 1863
    .end local v22    # "count":I
    .restart local v8    # "count":I
    :cond_11
    move/from16 v22, v8

    .line 1845
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .end local v6    # "userId":I
    .end local v8    # "count":I
    .end local v18    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v22    # "count":I
    :cond_12
    :goto_8
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v8, v22

    goto :goto_6

    .end local v19    # "uriForSystem":Landroid/net/Uri;
    .end local v20    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v22    # "count":I
    .local v5, "uriForSystem":Landroid/net/Uri;
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v8    # "count":I
    :cond_13
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v22, v8

    .line 1878
    .end local v0    # "i":I
    .end local v5    # "uriForSystem":Landroid/net/Uri;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8    # "count":I
    move-object/from16 v0, v17

    goto :goto_c

    .line 1829
    .end local v17    # "result":Landroid/net/Uri;
    .local v0, "result":Landroid/net/Uri;
    .restart local v5    # "uriForSystem":Landroid/net/Uri;
    :cond_14
    move-object/from16 v19, v5

    .line 1834
    .end local v5    # "uriForSystem":Landroid/net/Uri;
    .restart local v19    # "uriForSystem":Landroid/net/Uri;
    :goto_9
    const/4 v5, 0x0

    return-object v5

    .line 1881
    .end local v19    # "uriForSystem":Landroid/net/Uri;
    :cond_15
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmUserToBeInsertedTo(Landroid/provider/CallLog$AddCallParams;)Landroid/os/UserHandle;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 1882
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmUserToBeInsertedTo(Landroid/provider/CallLog$AddCallParams;)Landroid/os/UserHandle;

    move-result-object v5

    goto :goto_a

    .line 1883
    :cond_16
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    :goto_a
    nop

    .line 1885
    .local v5, "targetUserHandle":Landroid/os/UserHandle;
    invoke-virtual {v3, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1886
    invoke-virtual {v3, v5}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1887
    invoke-static {v2, v9, v5}, Landroid/provider/CallLog$Calls;->maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v6

    .line 1888
    .local v6, "locationUri":Landroid/net/Uri;
    if-eqz v6, :cond_17

    .line 1889
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1891
    :cond_17
    const/4 v8, 0x0

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/String;

    invoke-virtual {v15, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    .end local v6    # "locationUri":Landroid/net/Uri;
    :cond_18
    :goto_b
    invoke-static {v1, v3, v5, v15}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1898
    .end local v5    # "targetUserHandle":Landroid/os/UserHandle;
    :goto_c
    return-object v0
.end method

.method public static blacklist addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;JI)Landroid/net/Uri;
    .locals 22
    .param p0, "ci"    # Landroid/telecom/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "missedReason"    # J
    .param p13, "isPhoneAccountMigrationPending"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-wide/from16 v19, p11

    move/from16 v21, p13

    .line 1548
    const-string v3, ""

    const-string v4, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v0 .. v21}, Landroid/provider/CallLog$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;JI)Landroid/net/Uri;
    .locals 22
    .param p0, "ci"    # Landroid/telecom/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # Ljava/lang/Long;
    .param p13, "addForAllUsers"    # Z
    .param p14, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p15, "missedReason"    # J
    .param p17, "isPhoneAccountMigrationPending"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-wide/from16 v19, p15

    move/from16 v21, p17

    .line 1591
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v0 .. v21}, Landroid/provider/CallLog$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-p addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JI)Landroid/net/Uri;
    .locals 17
    .param p0, "ci"    # Landroid/telecom/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # Ljava/lang/Long;
    .param p13, "addForAllUsers"    # Z
    .param p14, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p15, "isRead"    # Z
    .param p16, "callBlockReason"    # I
    .param p17, "callScreeningAppName"    # Ljava/lang/CharSequence;
    .param p18, "callScreeningComponentName"    # Ljava/lang/String;
    .param p19, "missedReason"    # J
    .param p21, "isPhoneAccountMigrationPending"    # I

    .line 1647
    new-instance v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    invoke-direct {v0}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;-><init>()V

    .line 1649
    .local v0, "builder":Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallerInfo(Landroid/telecom/CallerInfo;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1650
    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1651
    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setPostDialDigits(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1652
    move-object/from16 v4, p4

    invoke-virtual {v0, v4}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setViaNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1653
    move/from16 v5, p5

    invoke-virtual {v0, v5}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setPresentation(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1654
    move/from16 v6, p6

    invoke-virtual {v0, v6}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallType(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1655
    move/from16 v7, p7

    invoke-virtual {v0, v7}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setFeatures(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1656
    move-object/from16 v8, p8

    invoke-virtual {v0, v8}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1657
    move-wide/from16 v9, p9

    invoke-virtual {v0, v9, v10}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setStart(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1658
    move/from16 v11, p11

    invoke-virtual {v0, v11}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setDuration(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1659
    if-nez p12, :cond_0

    const-wide/high16 v12, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_0
    invoke-virtual {v0, v12, v13}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setDataUsage(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1660
    move/from16 v12, p13

    invoke-virtual {v0, v12}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setAddForAllUsers(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1661
    move-object/from16 v13, p14

    invoke-virtual {v0, v13}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setUserToBeInsertedTo(Landroid/os/UserHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1662
    move/from16 v14, p15

    invoke-virtual {v0, v14}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setIsRead(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1663
    move/from16 v15, p16

    invoke-virtual {v0, v15}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallBlockReason(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1664
    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallScreeningAppName(Ljava/lang/CharSequence;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1665
    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallScreeningComponentName(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1666
    move-wide/from16 v1, p19

    invoke-virtual {v0, v1, v2}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setMissedReason(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1667
    move/from16 v1, p21

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setIsPhoneAccountMigrationPending(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1669
    invoke-virtual {v0}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->build()Landroid/provider/CallLog$AddCallParams;

    move-result-object v2

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    .end local v0    # "builder":Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .local v16, "builder":Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    invoke-static {v0, v2}, Landroid/provider/CallLog$Calls;->addCall(Landroid/content/Context;Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 1943
    const-string v0, "CallLog"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1948
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .line 1949
    :goto_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1947
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 1962
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1963
    .local v3, "result":Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 1964
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 1972
    .local v4, "lastPathSegment":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1973
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert into call log due to appops denial; resultUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    .end local v4    # "lastPathSegment":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 1977
    :cond_2
    const-string v4, "Failed to insert into call log; null result uri."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2004
    :goto_1
    return-object v3

    .line 2005
    .end local v3    # "result":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 2006
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "Failed to insert calllog"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2010
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist charSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .line 1902
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static greylist-max-o getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2119
    const/4 v0, 0x0

    .line 2120
    .local v0, "countryIso":Ljava/lang/String;
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 2122
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    .line 2123
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    .line 2124
    .local v2, "country":Landroid/location/Country;
    if-eqz v2, :cond_0

    .line 2125
    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2128
    .end local v2    # "country":Landroid/location/Country;
    :cond_0
    return-object v0
.end method

.method public static whitelist getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 1923
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1924
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1926
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    const-string/jumbo v0, "number"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type = 2"

    const/4 v4, 0x0

    const-string v5, "date DESC"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 1932
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1935
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1937
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1935
    :cond_1
    return-object v0

    .line 1933
    :cond_2
    :goto_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1937
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1933
    :cond_3
    return-object v0

    .line 1937
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1938
    :cond_4
    throw v0
.end method

.method private static blacklist getLogAccountAddress(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 2096
    const/4 v0, 0x0

    .line 2098
    .local v0, "tm":Landroid/telecom/TelecomManager;
    :try_start_0
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2103
    goto :goto_0

    .line 2099
    :catch_0
    move-exception v1

    .line 2105
    :goto_0
    const/4 v1, 0x0

    .line 2106
    .local v1, "accountAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2107
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 2108
    .local v2, "account":Landroid/telecom/PhoneAccount;
    if-eqz v2, :cond_0

    .line 2109
    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v3

    .line 2110
    .local v3, "address":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 2111
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 2115
    .end local v2    # "account":Landroid/telecom/PhoneAccount;
    .end local v3    # "address":Landroid/net/Uri;
    :cond_0
    return-object v1
.end method

.method private static blacklist getLogNumberPresentation(Ljava/lang/String;I)I
    .locals 2
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "presentation"    # I

    .line 2074
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2075
    return p1

    .line 2078
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2079
    return p1

    .line 2082
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 2083
    return v0

    .line 2086
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_4

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 2091
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 2088
    :cond_4
    :goto_0
    return v1
.end method

.method public static blacklist isUserMissed(J)Z
    .locals 2
    .param p0, "missedReason"    # J

    .line 2142
    const-wide/32 v0, 0x10000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;
    .locals 6
    .param p0, "params"    # Landroid/provider/CallLog$AddCallParams;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2016
    invoke-static {p0}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmLatitude(Landroid/provider/CallLog$AddCallParams;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmLongitude(Landroid/provider/CallLog$AddCallParams;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2019
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2020
    .local v0, "locationValues":Landroid/content/ContentValues;
    invoke-static {p0}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmLatitude(Landroid/provider/CallLog$AddCallParams;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "latitude"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2021
    invoke-static {p0}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmLongitude(Landroid/provider/CallLog$AddCallParams;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "longitude"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2022
    sget-object v2, Landroid/provider/CallLog$Locations;->CONTENT_URI:Landroid/net/Uri;

    .line 2023
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 2022
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 2025
    .local v2, "locationUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2026
    :catch_0
    move-exception v3

    .line 2029
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "CallLog"

    const-string v5, "Skipping inserting location because caller lacks ACCESS_FINE_LOCATION."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    return-object v1

    .line 2017
    .end local v0    # "locationValues":Landroid/content/ContentValues;
    .end local v2    # "locationUri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static greylist-max-o shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userId"    # I

    .line 1908
    nop

    .line 1909
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 1908
    const-string/jumbo v1, "no_outgoing_calls"

    invoke-virtual {p1, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1910
    return v1

    .line 1912
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1913
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static greylist-max-o updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataId"    # Ljava/lang/String;

    .line 2036
    sget-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2037
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2038
    const-string/jumbo v1, "type"

    const-string v2, "call"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2040
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2041
    .local v0, "feedbackUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2042
    return-void
.end method

.method private static greylist-max-o updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .line 2050
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2053
    :cond_0
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2054
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2055
    return-void

    .line 2057
    :cond_1
    invoke-static {p3, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2058
    .local v1, "normalizedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2059
    return-void

    .line 2061
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2062
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "data4"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const-string v5, "_id=?"

    invoke-virtual {p1, v3, v2, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2064
    return-void

    .line 2051
    .end local v0    # "countryIso":Ljava/lang/String;
    .end local v1    # "normalizedNumber":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_3
    :goto_0
    return-void
.end method
