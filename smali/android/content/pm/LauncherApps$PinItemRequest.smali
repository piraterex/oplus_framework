.class public final Landroid/content/pm/LauncherApps$PinItemRequest;
.super Ljava/lang/Object;
.source "LauncherApps.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinItemRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherApps$PinItemRequest$RequestType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/LauncherApps$PinItemRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_TYPE_APPWIDGET:I = 0x2

.field public static final whitelist REQUEST_TYPE_SHORTCUT:I = 0x1


# instance fields
.field private final greylist-max-o mInner:Landroid/content/pm/IPinItemRequest;

.field private final greylist-max-o mRequestType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2256
    new-instance v0, Landroid/content/pm/LauncherApps$PinItemRequest$1;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$PinItemRequest$1;-><init>()V

    sput-object v0, Landroid/content/pm/LauncherApps$PinItemRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/IPinItemRequest;I)V
    .locals 0
    .param p1, "inner"    # Landroid/content/pm/IPinItemRequest;
    .param p2, "type"    # I

    .line 2127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    iput-object p1, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    .line 2129
    iput p2, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mRequestType:I

    .line 2130
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2246
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mRequestType:I

    .line 2247
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPinItemRequest$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPinItemRequest;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    .line 2248
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/LauncherApps$PinItemRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps$PinItemRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist accept()Z
    .locals 1

    .line 2240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist accept(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .line 2226
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v0, p1}, Landroid/content/pm/IPinItemRequest;->accept(Landroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2227
    :catch_0
    move-exception v0

    .line 2228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 2268
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 2174
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v0}, Landroid/content/pm/IPinItemRequest;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2175
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v0, :cond_0

    .line 2176
    const/4 v1, 0x0

    return-object v1

    .line 2178
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2179
    return-object v0

    .line 2180
    .end local v0    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :catch_0
    move-exception v0

    .line 2181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 2

    .line 2196
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v0}, Landroid/content/pm/IPinItemRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2197
    :catch_0
    move-exception v0

    .line 2198
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRequestType()I
    .locals 1

    .line 2139
    iget v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mRequestType:I

    return v0
.end method

.method public whitelist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 2

    .line 2153
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v0}, Landroid/content/pm/IPinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2154
    :catch_0
    move-exception v0

    .line 2155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isValid()Z
    .locals 2

    .line 2209
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v0}, Landroid/content/pm/IPinItemRequest;->isValid()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2210
    :catch_0
    move-exception v0

    .line 2211
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2252
    iget v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mRequestType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2253
    iget-object v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v0}, Landroid/content/pm/IPinItemRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2254
    return-void
.end method
