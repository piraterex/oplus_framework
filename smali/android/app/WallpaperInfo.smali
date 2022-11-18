.class public final Landroid/app/WallpaperInfo;
.super Ljava/lang/Object;
.source "WallpaperInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/WallpaperInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o TAG:Ljava/lang/String; = "WallpaperInfo"


# instance fields
.field final greylist-max-o mAuthorResource:I

.field final greylist-max-o mContextDescriptionResource:I

.field final greylist-max-o mContextUriResource:I

.field final greylist-max-o mDescriptionResource:I

.field final greylist-max-o mService:Landroid/content/pm/ResolveInfo;

.field final greylist-max-o mSettingsActivityName:Ljava/lang/String;

.field final blacklist mSettingsSliceUri:Ljava/lang/String;

.field final blacklist mShouldUseDefaultUnfoldTransition:Z

.field final greylist-max-o mShowMetadataInPreview:Z

.field final blacklist mSupportMultipleDisplays:Z

.field final greylist-max-o mSupportsAmbientMode:Z

.field final greylist-max-o mThumbnailResource:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 460
    new-instance v0, Landroid/app/WallpaperInfo$1;

    invoke-direct {v0}, Landroid/app/WallpaperInfo$1;-><init>()V

    sput-object v0, Landroid/app/WallpaperInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 98
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 100
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 101
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 103
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v3, "android.service.wallpaper"

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    move-object v2, v3

    .line 104
    if-eqz v2, :cond_3

    .line 109
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 111
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 114
    .local v4, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v8, :cond_0

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v9, "wallpaper"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 124
    sget-object v9, Lcom/android/internal/R$styleable;->Wallpaper:[I

    invoke-virtual {v3, v4, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 126
    .local v9, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 128
    const/4 v10, -0x1

    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    .line 131
    const/4 v7, 0x3

    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    .line 134
    const/4 v7, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    .line 137
    const/4 v11, 0x4

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    .line 140
    const/4 v11, 0x5

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    .line 143
    const/4 v10, 0x6

    invoke-virtual {v9, v10, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Landroid/app/WallpaperInfo;->mShowMetadataInPreview:Z

    .line 146
    const/4 v10, 0x7

    invoke-virtual {v9, v10, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Landroid/app/WallpaperInfo;->mSupportsAmbientMode:Z

    .line 149
    const/16 v10, 0xa

    invoke-virtual {v9, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Landroid/app/WallpaperInfo;->mShouldUseDefaultUnfoldTransition:Z

    .line 152
    const/16 v8, 0x8

    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/app/WallpaperInfo;->mSettingsSliceUri:Ljava/lang/String;

    .line 154
    const/16 v8, 0x9

    invoke-virtual {v9, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/app/WallpaperInfo;->mSupportMultipleDisplays:Z

    .line 158
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v9    # "sa":Landroid/content/res/TypedArray;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 165
    :cond_1
    return-void

    .line 120
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_2
    :try_start_1
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with wallpaper tag"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/WallpaperInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    throw v7

    .line 105
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/WallpaperInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    :cond_3
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No android.service.wallpaper meta-data"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/WallpaperInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    throw v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/WallpaperInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 159
    :catch_0
    move-exception v3

    .line 160
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create context for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/WallpaperInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/WallpaperInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    :goto_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 164
    :cond_4
    throw v3
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/app/WallpaperInfo;->mShowMetadataInPreview:Z

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/app/WallpaperInfo;->mSupportsAmbientMode:Z

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsSliceUri:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/app/WallpaperInfo;->mSupportMultipleDisplays:Z

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/app/WallpaperInfo;->mShouldUseDefaultUnfoldTransition:Z

    .line 179
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 180
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .locals 3

    .line 209
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .line 202
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public whitelist getServiceName()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSettingsActivity()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSettingsSliceUri()Landroid/net/Uri;
    .locals 1

    .line 375
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsSliceUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x0

    return-object v0

    .line 378
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getShowMetadataInPreview()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mShowMetadataInPreview:Z

    return v0
.end method

.method public whitelist loadAuthor(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 251
    iget v0, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    if-lez v0, :cond_1

    .line 252
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 253
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 254
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 255
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 256
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 258
    :cond_0
    iget v2, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 251
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0
.end method

.method public whitelist loadContextDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 310
    iget v0, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    if-lez v0, :cond_1

    .line 311
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 312
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 313
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 314
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 315
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 317
    :cond_0
    iget v2, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 310
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0
.end method

.method public whitelist loadContextUri(Landroid/content/pm/PackageManager;)Landroid/net/Uri;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 288
    iget v0, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    if-lez v0, :cond_2

    .line 289
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 290
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 291
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 292
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 293
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 295
    :cond_0
    iget v2, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 296
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "contextUriString":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 298
    const/4 v3, 0x0

    return-object v3

    .line 300
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 288
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "contextUriString":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0
.end method

.method public whitelist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 266
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 267
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 268
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 269
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 271
    :cond_0
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v2, :cond_1

    .line 272
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 276
    :cond_1
    iget v2, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    if-lez v2, :cond_2

    .line 277
    iget-object v3, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 276
    :cond_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 230
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 220
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 240
    iget v0, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 242
    :cond_0
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist shouldUseDefaultUnfoldTransition()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mShouldUseDefaultUnfoldTransition:Z

    return v0
.end method

.method public whitelist supportsAmbientMode()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 344
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mSupportsAmbientMode:Z

    return v0
.end method

.method public whitelist supportsMultipleDisplays()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mSupportMultipleDisplays:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WallpaperInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 443
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    iget v0, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget v0, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget v0, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget v0, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget v0, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mShowMetadataInPreview:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mSupportsAmbientMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsSliceUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 452
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mSupportMultipleDisplays:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mShouldUseDefaultUnfoldTransition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 455
    return-void
.end method
