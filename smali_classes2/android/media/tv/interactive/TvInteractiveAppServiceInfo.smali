.class public final Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
.super Ljava/lang/Object;
.source "TvInteractiveAppServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppServiceInfo$InteractiveAppType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field public static final whitelist INTERACTIVE_APP_TYPE_ATSC:I = 0x2

.field public static final whitelist INTERACTIVE_APP_TYPE_GINGA:I = 0x4

.field public static final whitelist INTERACTIVE_APP_TYPE_HBBTV:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TvInteractiveAppServiceInfo"

.field private static final blacklist XML_START_TAG_NAME:Ljava/lang/String; = "tv-interactive-app"


# instance fields
.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mService:Landroid/content/pm/ResolveInfo;

.field private blacklist mTypes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo$1;

    invoke-direct {v0}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-eqz p1, :cond_1

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.tv.interactive.TvInteractiveAppService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 88
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 92
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->generateInteractiveAppServiceId(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "id":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v4, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, p1, v4}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->parseServiceMetadata(Landroid/content/pm/ResolveInfo;Landroid/content/Context;Ljava/util/List;)V

    .line 99
    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 100
    iput-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    .line 101
    invoke-static {v4}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->toTypesFlag(Ljava/util/List;)I

    move-result v5

    iput v5, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 102
    return-void

    .line 89
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid component. Can\'t find the service."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;I)V
    .locals 0
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "types"    # I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 105
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    .line 106
    iput p3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 107
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 113
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/interactive/TvInteractiveAppServiceInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist generateInteractiveAppServiceId(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Landroid/content/ComponentName;

    .line 175
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseServiceMetadata(Landroid/content/pm/ResolveInfo;Landroid/content/Context;Ljava/util/List;)V
    .locals 13
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p2, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 181
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 182
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "android.media.tv.interactive.app"

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v2, :cond_4

    .line 190
    :try_start_1
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 191
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 194
    .local v4, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_0

    const/4 v5, 0x2

    if-eq v6, v5, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v7, "tv-interactive-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 205
    sget-object v7, Lcom/android/internal/R$styleable;->TvInteractiveAppService:[I

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 207
    .local v7, "sa":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    .line 209
    .local v9, "textArr":[Ljava/lang/CharSequence;
    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_1

    aget-object v11, v9, v8

    .line 210
    .local v11, "cs":Ljava/lang/CharSequence;
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    nop

    .end local v11    # "cs":Ljava/lang/CharSequence;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .end local v9    # "textArr":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_2
    nop

    .line 220
    return-void

    .line 201
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_3
    :try_start_3
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Meta-data does not start with tv-interactive-app tag for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v7

    .line 182
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 185
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No android.media.tv.interactive.app meta-data found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    if-eqz v2, :cond_5

    :try_start_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_3
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 217
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No resources found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 214
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed reading meta-data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static blacklist toTypesFlag(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 223
    .local p0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 224
    .local v0, "flag":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    .local v2, "type":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "hbbtv"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "ginga"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v4, "atsc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 233
    :pswitch_0
    or-int/lit8 v0, v0, 0x4

    .line 234
    goto :goto_2

    .line 230
    :pswitch_1
    or-int/lit8 v0, v0, 0x2

    .line 231
    goto :goto_2

    .line 227
    :pswitch_2
    or-int/lit8 v0, v0, 0x1

    .line 228
    nop

    .line 238
    .end local v2    # "type":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 239
    :cond_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x2dd9c3 -> :sswitch_2
        0x5dcd9a6 -> :sswitch_1
        0x5e7972a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getComponent()Landroid/content/ComponentName;
    .locals 3

    .line 154
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public whitelist getSupportedTypes()I
    .locals 1

    .line 171
    iget v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 136
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return-void
.end method
