.class Landroid/app/AlarmManager$AlarmClockInfo$1;
.super Ljava/lang/Object;
.source "AlarmManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlarmManager$AlarmClockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/AlarmManager$AlarmClockInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1519
    new-instance v0, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {v0, p1}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1516
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager$AlarmClockInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1
    .param p1, "size"    # I

    .line 1524
    new-array v0, p1, [Landroid/app/AlarmManager$AlarmClockInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1516
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager$AlarmClockInfo$1;->newArray(I)[Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p1

    return-object p1
.end method
