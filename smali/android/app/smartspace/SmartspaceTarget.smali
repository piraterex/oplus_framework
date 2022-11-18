.class public final Landroid/app/smartspace/SmartspaceTarget;
.super Ljava/lang/Object;
.source "SmartspaceTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/SmartspaceTarget$Builder;,
        Landroid/app/smartspace/SmartspaceTarget$UiTemplateType;,
        Landroid/app/smartspace/SmartspaceTarget$FeatureType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FEATURE_ALARM:I = 0x7

.field public static final whitelist FEATURE_BEDTIME_ROUTINE:I = 0x10

.field public static final whitelist FEATURE_BLAZE_BUILD_PROGRESS:I = 0x28

.field public static final whitelist FEATURE_CALENDAR:I = 0x2

.field public static final whitelist FEATURE_COMMUTE_TIME:I = 0x3

.field public static final whitelist FEATURE_CONSENT:I = 0xb

.field public static final whitelist FEATURE_CROSS_DEVICE_TIMER:I = 0x20

.field public static final whitelist FEATURE_DOORBELL:I = 0x1e

.field public static final whitelist FEATURE_DRIVING_MODE:I = 0x1a

.field public static final whitelist FEATURE_EARTHQUAKE_ALERT:I = 0x26

.field public static final whitelist FEATURE_EARTHQUAKE_OCCURRED:I = 0x29

.field public static final whitelist FEATURE_ETA_MONITORING:I = 0x12

.field public static final whitelist FEATURE_FITNESS_TRACKING:I = 0x11

.field public static final whitelist FEATURE_FLASHLIGHT:I = 0x1c

.field public static final whitelist FEATURE_FLIGHT:I = 0x4

.field public static final whitelist FEATURE_GAS_STATION_PAYMENT:I = 0x18

.field public static final whitelist FEATURE_HOLIDAY_ALARM:I = 0x22

.field public static final whitelist FEATURE_LOYALTY_CARD:I = 0xe

.field public static final whitelist FEATURE_MEDIA:I = 0xf

.field public static final whitelist FEATURE_MEDIA_HEADS_UP:I = 0x24

.field public static final whitelist FEATURE_MEDIA_RESUME:I = 0x1f

.field public static final whitelist FEATURE_MISSED_CALL:I = 0x13

.field public static final whitelist FEATURE_ONBOARDING:I = 0x8

.field public static final whitelist FEATURE_PACKAGE_TRACKING:I = 0x14

.field public static final whitelist FEATURE_PAIRED_DEVICE_STATE:I = 0x19

.field public static final whitelist FEATURE_REMINDER:I = 0x6

.field public static final whitelist FEATURE_SAFETY_CHECK:I = 0x23

.field public static final whitelist FEATURE_SEVERE_WEATHER_ALERT:I = 0x21

.field public static final whitelist FEATURE_SHOPPING_LIST:I = 0xd

.field public static final whitelist FEATURE_SLEEP_SUMMARY:I = 0x1b

.field public static final whitelist FEATURE_SPORTS:I = 0x9

.field public static final whitelist FEATURE_STEP_COUNTING:I = 0x25

.field public static final whitelist FEATURE_STEP_DATE:I = 0x27

.field public static final whitelist FEATURE_STOCK_PRICE_CHANGE:I = 0xc

.field public static final whitelist FEATURE_STOPWATCH:I = 0x16

.field public static final whitelist FEATURE_TIMER:I = 0x15

.field public static final whitelist FEATURE_TIME_TO_LEAVE:I = 0x1d

.field public static final whitelist FEATURE_TIPS:I = 0x5

.field public static final whitelist FEATURE_UNDEFINED:I = 0x0

.field public static final whitelist FEATURE_UPCOMING_ALARM:I = 0x17

.field public static final whitelist FEATURE_WEATHER:I = 0x1

.field public static final whitelist FEATURE_WEATHER_ALERT:I = 0xa

.field public static final whitelist UI_TEMPLATE_CAROUSEL:I = 0x4

.field public static final whitelist UI_TEMPLATE_COMBINED_CARDS:I = 0x6

.field public static final whitelist UI_TEMPLATE_DEFAULT:I = 0x1

.field public static final whitelist UI_TEMPLATE_HEAD_TO_HEAD:I = 0x5

.field public static final whitelist UI_TEMPLATE_SUB_CARD:I = 0x7

.field public static final whitelist UI_TEMPLATE_SUB_IMAGE:I = 0x2

.field public static final whitelist UI_TEMPLATE_SUB_LIST:I = 0x3

.field public static final whitelist UI_TEMPLATE_UNDEFINED:I


# instance fields
.field private final blacklist mActionChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAssociatedSmartspaceTargetId:Ljava/lang/String;

.field private final blacklist mBaseAction:Landroid/app/smartspace/SmartspaceAction;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mCreationTimeMillis:J

.field private final blacklist mExpiryTimeMillis:J

.field private final blacklist mFeatureType:I

.field private final blacklist mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

.field private final blacklist mIconGrid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScore:F

.field private final blacklist mSensitive:Z

.field private final blacklist mShouldShowExpanded:Z

.field private final blacklist mSliceUri:Landroid/net/Uri;

.field private final blacklist mSmartspaceTargetId:Ljava/lang/String;

.field private final blacklist mSourceNotificationKey:Ljava/lang/String;

.field private final blacklist mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;

.field private final blacklist mWidget:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 463
    new-instance v0, Landroid/app/smartspace/SmartspaceTarget$1;

    invoke-direct {v0}, Landroid/app/smartspace/SmartspaceTarget$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/SmartspaceTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    .line 270
    sget-object v0, Landroid/app/smartspace/SmartspaceAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceAction;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    .line 271
    sget-object v0, Landroid/app/smartspace/SmartspaceAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceAction;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    .line 275
    sget-object v0, Landroid/app/smartspace/SmartspaceAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    .line 276
    sget-object v0, Landroid/app/smartspace/SmartspaceAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    .line 281
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    .line 282
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    .line 284
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    .line 285
    sget-object v0, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    .line 286
    const-class v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 287
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/smartspace/SmartspaceTarget-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/smartspace/SmartspaceTarget;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;JJFLjava/util/List;Ljava/util/List;IZZLjava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)V
    .locals 16
    .param p1, "smartspaceTargetId"    # Ljava/lang/String;
    .param p2, "headerAction"    # Landroid/app/smartspace/SmartspaceAction;
    .param p3, "baseAction"    # Landroid/app/smartspace/SmartspaceAction;
    .param p4, "creationTimeMillis"    # J
    .param p6, "expiryTimeMillis"    # J
    .param p8, "score"    # F
    .param p11, "featureType"    # I
    .param p12, "sensitive"    # Z
    .param p13, "shouldShowExpanded"    # Z
    .param p14, "sourceNotificationKey"    # Ljava/lang/String;
    .param p15, "componentName"    # Landroid/content/ComponentName;
    .param p16, "userHandle"    # Landroid/os/UserHandle;
    .param p17, "associatedSmartspaceTargetId"    # Ljava/lang/String;
    .param p18, "sliceUri"    # Landroid/net/Uri;
    .param p19, "widget"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p20, "templateData"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/smartspace/SmartspaceAction;",
            "Landroid/app/smartspace/SmartspaceAction;",
            "JJF",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;IZZ",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData;",
            ")V"
        }
    .end annotation

    .line 297
    .local p9, "actionChips":Ljava/util/List;, "Ljava/util/List<Landroid/app/smartspace/SmartspaceAction;>;"
    .local p10, "iconGrid":Ljava/util/List;, "Ljava/util/List<Landroid/app/smartspace/SmartspaceAction;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 298
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    .line 299
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    .line 300
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    .line 301
    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    .line 302
    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    .line 303
    move/from16 v8, p8

    iput v8, v0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    .line 304
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    .line 305
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    .line 306
    move/from16 v11, p11

    iput v11, v0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    .line 307
    move/from16 v12, p12

    iput-boolean v12, v0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    .line 308
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    .line 309
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    .line 310
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    .line 311
    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    .line 312
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    .line 313
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    .line 314
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    .line 315
    move-object/from16 v1, p20

    iput-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 316
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;JJFLjava/util/List;Ljava/util/List;IZZLjava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;Landroid/app/smartspace/SmartspaceTarget-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p20}, Landroid/app/smartspace/SmartspaceTarget;-><init>(Ljava/lang/String;Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;JJFLjava/util/List;Ljava/util/List;IZZLjava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 528
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 529
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 530
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/smartspace/SmartspaceTarget;

    .line 531
    .local v2, "that":Landroid/app/smartspace/SmartspaceTarget;
    iget-wide v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    iget-wide v5, v2, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    iget-wide v5, v2, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, v2, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    iget v4, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    .line 533
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    iget v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    iget-boolean v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    iget-boolean v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    .line 537
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    .line 538
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    .line 539
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    .line 540
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    .line 541
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    .line 542
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    .line 543
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    .line 544
    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    .line 545
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    .line 547
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    .line 548
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    iget-object v4, v2, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 549
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 531
    :goto_0
    return v0

    .line 529
    .end local v2    # "that":Landroid/app/smartspace/SmartspaceTarget;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getActionChips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAssociatedSmartspaceTargetId()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getBaseAction()Landroid/app/smartspace/SmartspaceAction;
    .locals 1

    .line 339
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    return-object v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 416
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getCreationTimeMillis()J
    .locals 2

    .line 347
    iget-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    return-wide v0
.end method

.method public whitelist getExpiryTimeMillis()J
    .locals 2

    .line 355
    iget-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    return-wide v0
.end method

.method public whitelist getFeatureType()I
    .locals 1

    .line 386
    iget v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    return v0
.end method

.method public whitelist getHeaderAction()Landroid/app/smartspace/SmartspaceAction;
    .locals 1

    .line 331
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    return-object v0
.end method

.method public whitelist getIconGrid()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getScore()F
    .locals 1

    .line 362
    iget v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    return v0
.end method

.method public whitelist getSliceUri()Landroid/net/Uri;
    .locals 1

    .line 440
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getSmartspaceTargetId()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSourceNotificationKey()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .locals 1

    .line 456
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    return-object v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 424
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist getWidget()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    .line 448
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 554
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    .line 555
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    .line 556
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 554
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isSensitive()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    return v0
.end method

.method public whitelist shouldShowExpanded()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartspaceTarget{mSmartspaceTargetId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mHeaderAction="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mBaseAction="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mCreationTimeMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mExpiryTimeMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mScore="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mActionChips="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mIconGrid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFeatureType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mSensitive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mShouldShowExpanded="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mSourceNotificationKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mComponentName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mUserHandle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAssociatedSmartspaceTargetId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSliceUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTemplateData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 477
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 479
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 480
    iget-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 481
    iget-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 482
    iget v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 483
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 484
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 485
    iget v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 487
    iget-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 488
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 490
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 491
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 493
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 494
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 495
    return-void
.end method
