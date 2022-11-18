.class public final Landroid/view/textclassifier/TextClassification;
.super Ljava/lang/Object;
.source "TextClassification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassification$Request;,
        Landroid/view/textclassifier/TextClassification$Builder;,
        Landroid/view/textclassifier/TextClassification$IntentType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o EMPTY:Landroid/view/textclassifier/TextClassification;

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "TextClassification"

.field private static final greylist-max-o MAX_LEGACY_ICON_SIZE:I = 0xc0


# instance fields
.field private final greylist-max-o mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mLegacyIcon:Landroid/graphics/drawable/Drawable;

.field private final greylist-max-o mLegacyIntent:Landroid/content/Intent;

.field private final greylist-max-o mLegacyLabel:Ljava/lang/String;

.field private final greylist-max-o mLegacyOnClickListener:Landroid/view/View$OnClickListener;

.field private final greylist-max-o mText:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Landroid/view/textclassifier/TextClassification$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/TextClassification;->EMPTY:Landroid/view/textclassifier/TextClassification;

    .line 758
    new-instance v0, Landroid/view/textclassifier/TextClassification$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    .line 773
    sget-object v0, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    .line 774
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 775
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteAction;

    .line 776
    .local v3, "action":Landroid/app/RemoteAction;
    invoke-virtual {v3}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-static {v4}, Landroid/view/textclassifier/TextClassification;->maybeLoadDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    .line 777
    invoke-virtual {v3}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/textclassifier/TextClassification;->mLegacyLabel:Ljava/lang/String;

    .line 778
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    .line 779
    .end local v3    # "action":Landroid/app/RemoteAction;
    goto :goto_0

    .line 780
    :cond_0
    iput-object v2, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    .line 781
    iput-object v2, p0, Landroid/view/textclassifier/TextClassification;->mLegacyLabel:Ljava/lang/String;

    .line 782
    iput-object v2, p0, Landroid/view/textclassifier/TextClassification;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    .line 784
    :goto_0
    iput-object v2, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIntent:Landroid/content/Intent;

    .line 785
    sget-object v0, Landroid/view/textclassifier/EntityConfidence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/EntityConfidence;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mId:Ljava/lang/String;

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mExtras:Landroid/os/Bundle;

    .line 788
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassification-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Ljava/util/List;Landroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "legacyIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "legacyLabel"    # Ljava/lang/String;
    .param p4, "legacyIntent"    # Landroid/content/Intent;
    .param p5, "legacyOnClickListener"    # Landroid/view/View$OnClickListener;
    .param p7, "entityConfidence"    # Landroid/view/textclassifier/EntityConfidence;
    .param p8, "id"    # Ljava/lang/String;
    .param p9, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/view/textclassifier/EntityConfidence;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 143
    .local p6, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    .line 146
    iput-object p3, p0, Landroid/view/textclassifier/TextClassification;->mLegacyLabel:Ljava/lang/String;

    .line 147
    iput-object p4, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIntent:Landroid/content/Intent;

    .line 148
    iput-object p5, p0, Landroid/view/textclassifier/TextClassification;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    .line 149
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    .line 150
    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/EntityConfidence;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 151
    iput-object p8, p0, Landroid/view/textclassifier/TextClassification;->mId:Ljava/lang/String;

    .line 152
    iput-object p9, p0, Landroid/view/textclassifier/TextClassification;->mExtras:Landroid/os/Bundle;

    .line 153
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Ljava/util/List;Landroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Landroid/os/Bundle;Landroid/view/textclassifier/TextClassification-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/view/textclassifier/TextClassification;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Ljava/util/List;Landroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static greylist-max-o createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "intent"    # Landroid/app/PendingIntent;

    .line 301
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v0, Landroid/view/textclassifier/TextClassification$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/TextClassification$$ExternalSyntheticLambda0;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static greylist-max-o createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 320
    const/high16 v0, 0xc000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$createIntentOnClickListener$0(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 3
    .param p0, "intent"    # Landroid/app/PendingIntent;
    .param p1, "v"    # Landroid/view/View;

    .line 304
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "TextClassification"

    const-string v2, "Error sending PendingIntent"

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method private static greylist-max-o maybeLoadDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;

    .line 793
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 794
    return-object v0

    .line 796
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 808
    :pswitch_0
    return-object v0

    .line 800
    :pswitch_1
    new-instance v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 801
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 800
    return-object v1

    .line 803
    :pswitch_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 804
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 806
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v4

    .line 805
    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 803
    return-object v0

    .line 798
    :pswitch_3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getConfidenceScore(Ljava/lang/String;)F
    .locals 1
    .param p1, "entity"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist getEntity(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 180
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEntityCount()I
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 271
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mLegacyLabel:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist toBuilder()Landroid/view/textclassifier/TextClassification$Builder;
    .locals 2

    .line 276
    new-instance v0, Landroid/view/textclassifier/TextClassification$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification;->mId:Ljava/lang/String;

    .line 277
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Builder;->setId(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Builder;->setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    .line 279
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Builder;->addActions(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 280
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Builder;->setEntityConfidence(Landroid/view/textclassifier/EntityConfidence;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    .line 281
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification;->mLegacyLabel:Ljava/lang/String;

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Builder;->setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIntent:Landroid/content/Intent;

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Builder;->setIntent(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification;->mExtras:Landroid/os/Bundle;

    .line 285
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v0

    .line 276
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 290
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mId:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification;->mExtras:Landroid/os/Bundle;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "TextClassification {text=%s, entities=%s, actions=%s, id=%s, extras=%s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 750
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 753
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 754
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 756
    return-void
.end method
