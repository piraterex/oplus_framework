.class public Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
.super Landroid/app/ApplicationErrorReport$CrashInfo;
.source "ApplicationErrorReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationErrorReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableCrashInfo"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 495
    new-instance v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo$1;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo$1;-><init>()V

    sput-object v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 477
    invoke-direct {p0}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>()V

    .line 478
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 488
    invoke-direct {p0, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 489
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 484
    invoke-direct {p0, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 485
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 492
    const/4 v0, 0x0

    return v0
.end method
