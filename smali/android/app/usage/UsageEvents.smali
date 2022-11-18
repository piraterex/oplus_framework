.class public final Landroid/app/usage/UsageEvents;
.super Ljava/lang/Object;
.source "UsageEvents.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageEvents$Event;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/UsageEvents;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HIDE_LOCUS_EVENTS:I = 0x8

.field public static final blacklist HIDE_SHORTCUT_EVENTS:I = 0x2

.field public static final greylist-max-o INSTANT_APP_CLASS_NAME:Ljava/lang/String; = "android.instant_class"

.field public static final greylist-max-o INSTANT_APP_PACKAGE_NAME:Ljava/lang/String; = "android.instant_app"

.field public static final blacklist OBFUSCATED_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "unknown_channel_id"

.field public static final blacklist OBFUSCATE_INSTANT_APPS:I = 0x1

.field public static final blacklist OBFUSCATE_NOTIFICATION_EVENTS:I = 0x4

.field public static final blacklist SHOW_ALL_EVENT_DATA:I


# instance fields
.field private final greylist-max-p mEventCount:I

.field private greylist-max-p mEventsToWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIncludeTaskRoots:Z

.field private greylist-max-p mIndex:I

.field private greylist mParcel:Landroid/os/Parcel;

.field private greylist-max-p mStringPool:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1052
    new-instance v0, Landroid/app/usage/UsageEvents$1;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$1;-><init>()V

    sput-object v0, Landroid/app/usage/UsageEvents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .locals 1

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 723
    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 728
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 772
    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    .line 774
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 723
    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 728
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v1

    .line 748
    .local v1, "bytes":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 749
    .local v2, "data":Landroid/os/Parcel;
    array-length v3, v1

    invoke-virtual {v2, v1, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 750
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 751
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 752
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 753
    if-lez v3, :cond_0

    .line 754
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    .line 756
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 757
    .local v3, "listByteLength":I
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 758
    .local v4, "positionInParcel":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    iput-object v5, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 759
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 760
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {v0, v2, v5, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 761
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->setDataSize(I)V

    .line 762
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 764
    .end local v3    # "listByteLength":I
    .end local v4    # "positionInParcel":I
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    .line 765
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/List;[Ljava/lang/String;)V
    .locals 1
    .param p2, "stringPool"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 782
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    .line 783
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;[Ljava/lang/String;Z)V
    .locals 1
    .param p2, "stringPool"    # [Ljava/lang/String;
    .param p3, "includeTaskRoots"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 789
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 723
    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 728
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 790
    iput-object p2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    .line 791
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 792
    iput-object p1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 793
    iput-boolean p3, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    .line 794
    return-void
.end method

.method private greylist-max-p findStringIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 851
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 852
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 855
    return v0

    .line 853
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not in the string pool"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-p readEventFromParcel(Landroid/os/Parcel;Landroid/app/usage/UsageEvents$Event;)V
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "eventOut"    # Landroid/app/usage/UsageEvents$Event;

    .line 928
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 929
    .local v0, "packageIndex":I
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 930
    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto :goto_0

    .line 932
    :cond_0
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 935
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 936
    .local v2, "classIndex":I
    if-ltz v2, :cond_1

    .line 937
    iget-object v3, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto :goto_1

    .line 939
    :cond_1
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 941
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 943
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 944
    .local v3, "taskRootPackageIndex":I
    if-ltz v3, :cond_2

    .line 945
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v4, v4, v3

    iput-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    goto :goto_2

    .line 947
    :cond_2
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 950
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 951
    .local v4, "taskRootClassIndex":I
    if-ltz v4, :cond_3

    .line 952
    iget-object v5, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v5, v5, v4

    iput-object v5, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_3

    .line 954
    :cond_3
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 957
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 961
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 962
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 963
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 964
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 965
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 966
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 967
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 969
    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_4

    .line 989
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    goto :goto_4

    .line 986
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 987
    goto :goto_4

    .line 983
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 984
    goto :goto_4

    .line 978
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 981
    goto :goto_4

    .line 975
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 976
    goto :goto_4

    .line 972
    :sswitch_5
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 973
    nop

    .line 992
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 993
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_5
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xb -> :sswitch_2
        0xc -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-p writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "p"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 864
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, "packageIndex":I
    goto :goto_0

    .line 867
    .end local v0    # "packageIndex":I
    :cond_0
    const/4 v0, -0x1

    .line 871
    .restart local v0    # "packageIndex":I
    :goto_0
    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 872
    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, "classIndex":I
    goto :goto_1

    .line 874
    .end local v1    # "classIndex":I
    :cond_1
    const/4 v1, -0x1

    .line 878
    .restart local v1    # "classIndex":I
    :goto_1
    iget-boolean v2, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 879
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v2

    .local v2, "taskRootPackageIndex":I
    goto :goto_2

    .line 881
    .end local v2    # "taskRootPackageIndex":I
    :cond_2
    const/4 v2, -0x1

    .line 885
    .restart local v2    # "taskRootPackageIndex":I
    :goto_2
    iget-boolean v3, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 886
    iget-object v3, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v3

    .local v3, "taskRootClassIndex":I
    goto :goto_3

    .line 888
    .end local v3    # "taskRootClassIndex":I
    :cond_3
    const/4 v3, -0x1

    .line 890
    .restart local v3    # "taskRootClassIndex":I
    :goto_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 893
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    iget-wide v4, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 898
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_4

    .line 917
    :sswitch_0
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 914
    :sswitch_1
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 915
    goto :goto_4

    .line 911
    :sswitch_2
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    goto :goto_4

    .line 906
    :sswitch_3
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 907
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 908
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 909
    goto :goto_4

    .line 903
    :sswitch_4
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 904
    goto :goto_4

    .line 900
    :sswitch_5
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p2, p3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 901
    nop

    .line 920
    :goto_4
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_5
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xb -> :sswitch_2
        0xc -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 997
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z
    .locals 3
    .param p1, "eventOut"    # Landroid/app/usage/UsageEvents$Event;

    .line 815
    if-eqz p1, :cond_3

    .line 818
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lt v0, v1, :cond_0

    .line 819
    const/4 v0, 0x0

    return v0

    .line 822
    :cond_0
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_1

    .line 823
    invoke-direct {p0, v1, p1}, Landroid/app/usage/UsageEvents;->readEventFromParcel(Landroid/os/Parcel;Landroid/app/usage/UsageEvents$Event;)V

    goto :goto_0

    .line 825
    :cond_1
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {p1, v0}, Landroid/app/usage/UsageEvents$Event;->-$$Nest$mcopyFrom(Landroid/app/usage/UsageEvents$Event;Landroid/app/usage/UsageEvents$Event;)V

    .line 828
    :goto_0
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 829
    iget v2, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v0, :cond_2

    .line 830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 833
    :cond_2
    return v1

    .line 816
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given eventOut must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasNextEvent()Z
    .locals 2

    .line 803
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o resetToStart()V
    .locals 2

    .line 843
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 844
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_0

    .line 845
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 847
    :cond_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1003
    .local v0, "data":Landroid/os/Parcel;
    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    iget v1, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lez v1, :cond_3

    .line 1006
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1008
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1012
    .local v1, "p":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1013
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-ge v3, v4, :cond_0

    .line 1014
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    .line 1015
    .local v4, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-direct {p0, v4, v1, p2}, Landroid/app/usage/UsageEvents;->writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V

    .line 1013
    .end local v4    # "event":Landroid/app/usage/UsageEvents$Event;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1018
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 1021
    .local v3, "listByteLength":I
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    .end local v3    # "listByteLength":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1030
    nop

    .line 1032
    .end local v1    # "p":Landroid/os/Parcel;
    goto :goto_1

    .line 1029
    .restart local v1    # "p":Landroid/os/Parcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1030
    throw v2

    .line 1032
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_1
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_2

    .line 1034
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 1042
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Either mParcel or mEventsToWrite must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1048
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBlob([B)V

    .line 1049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1050
    return-void
.end method
