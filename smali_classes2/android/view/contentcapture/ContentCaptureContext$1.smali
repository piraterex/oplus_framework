.class Landroid/view/contentcapture/ContentCaptureContext$1;
.super Ljava/lang/Object;
.source "ContentCaptureContext.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/contentcapture/ContentCaptureContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureContext;
    .locals 14
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 420
    .local v0, "hasClientContext":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 422
    const-class v2, Landroid/content/LocusId;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/LocusId;

    .line 423
    .local v2, "id":Landroid/content/LocusId;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 424
    .local v3, "extras":Landroid/os/Bundle;
    new-instance v4, Landroid/view/contentcapture/ContentCaptureContext$Builder;

    invoke-direct {v4, v2}, Landroid/view/contentcapture/ContentCaptureContext$Builder;-><init>(Landroid/content/LocusId;)V

    .line 425
    .local v4, "builder":Landroid/view/contentcapture/ContentCaptureContext$Builder;
    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/contentcapture/ContentCaptureContext$Builder;

    .line 426
    :cond_1
    new-instance v5, Landroid/view/contentcapture/ContentCaptureContext;

    invoke-direct {v5, v4, v1}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;Landroid/view/contentcapture/ContentCaptureContext-IA;)V

    move-object v2, v5

    .line 427
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "builder":Landroid/view/contentcapture/ContentCaptureContext$Builder;
    .local v2, "clientContext":Landroid/view/contentcapture/ContentCaptureContext;
    goto :goto_1

    .line 428
    .end local v2    # "clientContext":Landroid/view/contentcapture/ContentCaptureContext;
    :cond_2
    const/4 v2, 0x0

    .line 430
    .restart local v2    # "clientContext":Landroid/view/contentcapture/ContentCaptureContext;
    :goto_1
    const-class v3, Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 431
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_3

    .line 433
    return-object v2

    .line 435
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 436
    .local v10, "displayId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 437
    .local v11, "windowToken":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 438
    .local v12, "flags":I
    new-instance v5, Landroid/app/assist/ActivityId;

    invoke-direct {v5, p1}, Landroid/app/assist/ActivityId;-><init>(Landroid/os/Parcel;)V

    .line 440
    .local v5, "activityId":Landroid/app/assist/ActivityId;
    new-instance v13, Landroid/view/contentcapture/ContentCaptureContext;

    move-object v3, v13

    move-object v4, v2

    move-object v6, v1

    move v7, v10

    move-object v8, v11

    move v9, v12

    invoke-direct/range {v3 .. v9}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext;Landroid/app/assist/ActivityId;Landroid/content/ComponentName;ILandroid/os/IBinder;I)V

    return-object v13
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 412
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureContext$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/contentcapture/ContentCaptureContext;
    .locals 1
    .param p1, "size"    # I

    .line 448
    new-array v0, p1, [Landroid/view/contentcapture/ContentCaptureContext;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 412
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureContext$1;->newArray(I)[Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object p1

    return-object p1
.end method
