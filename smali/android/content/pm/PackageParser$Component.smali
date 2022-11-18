.class public abstract Landroid/content/pm/PackageParser$Component;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II:",
        "Landroid/content/pm/PackageParser$IntentInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final greylist className:Ljava/lang/String;

.field greylist-max-o componentName:Landroid/content/ComponentName;

.field greylist-max-o componentShortName:Ljava/lang/String;

.field public final greylist intents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TII;>;"
        }
    .end annotation
.end field

.field public greylist metaData:Landroid/os/Bundle;

.field public greylist-max-o order:I

.field public greylist owner:Landroid/content/pm/PackageParser$Package;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageParser$Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Component<",
            "TII;>;)V"
        }
    .end annotation

    .line 7734
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    .local p1, "clone":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7735
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 7736
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 7737
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 7738
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 7739
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    .line 7740
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 7687
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7688
    iput-object p1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 7689
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 7690
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 7691
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/ArrayList<",
            "TII;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7681
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    .local p2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TII;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7682
    iput-object p1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 7683
    iput-object p2, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 7684
    iput-object p3, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 7685
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ComponentInfo;)V
    .locals 8
    .param p1, "args"    # Landroid/content/pm/PackageParser$ParseComponentArgs;
    .param p2, "outInfo"    # Landroid/content/pm/ComponentInfo;

    .line 7706
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/PackageItemInfo;)V

    .line 7707
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->outError:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 7708
    return-void

    .line 7711
    :cond_0
    iget v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    if-eqz v0, :cond_2

    .line 7713
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 7714
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget v2, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    const/16 v3, 0x400

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "pname":Ljava/lang/CharSequence;
    goto :goto_0

    .line 7720
    .end local v0    # "pname":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget v2, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 7722
    .restart local v0    # "pname":Ljava/lang/CharSequence;
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v5, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    iget-object v6, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->outError:[Ljava/lang/String;

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 7727
    .end local v0    # "pname":Ljava/lang/CharSequence;
    :cond_2
    iget v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    if-eqz v0, :cond_3

    .line 7728
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget v2, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p2, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 7731
    :cond_3
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p2, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 7732
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/PackageItemInfo;)V
    .locals 16
    .param p1, "args"    # Landroid/content/pm/PackageParser$ParsePackageItemArgs;
    .param p2, "outInfo"    # Landroid/content/pm/PackageItemInfo;

    .line 7693
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7694
    iget-object v2, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->owner:Landroid/content/pm/PackageParser$Package;

    iput-object v2, v0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 7695
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 7696
    iget-object v4, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    iget v10, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->nameRes:I

    iget v11, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->labelRes:I

    iget v12, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->iconRes:I

    iget v13, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->roundIconRes:I

    iget v14, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->logoRes:I

    iget v15, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->bannerRes:I

    const/4 v9, 0x1

    move-object/from16 v5, p2

    invoke-static/range {v4 .. v15}, Landroid/content/pm/PackageParser;->-$$Nest$smparsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7699
    move-object/from16 v2, p2

    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v3, v0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    goto :goto_0

    .line 7701
    :cond_0
    move-object/from16 v2, p2

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 7703
    :goto_0
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 7754
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7755
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 7756
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 7757
    invoke-static {p1}, Landroid/content/pm/PackageParser$Component;->createIntentsList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 7759
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 7760
    return-void
.end method

.method private static greylist-max-o createIntentsList(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/pm/PackageParser$IntentInfo;",
            ">(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 7805
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 7806
    .local v0, "N":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 7807
    const/4 v1, 0x0

    return-object v1

    .line 7810
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 7811
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2

    .line 7814
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7817
    .local v2, "componentName":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 7818
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/Parcel;

    aput-object v6, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 7820
    .local v5, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7821
    .local v6, "intentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_2

    .line 7822
    new-array v8, v4, [Ljava/lang/Object;

    aput-object p0, v8, v1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$IntentInfo;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7821
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 7826
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v5    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v7    # "i":I
    :cond_2
    nop

    .line 7828
    return-object v6

    .line 7824
    .end local v6    # "intentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catch_0
    move-exception v1

    .line 7825
    .local v1, "ree":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to construct intent list for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private static greylist-max-o writeIntentsList(Ljava/util/ArrayList;Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/content/pm/PackageParser$IntentInfo;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 7785
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/content/pm/PackageParser$IntentInfo;>;"
    if-nez p0, :cond_0

    .line 7786
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7787
    return-void

    .line 7790
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7791
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7794
    if-lez v0, :cond_1

    .line 7795
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$IntentInfo;

    .line 7796
    .local v1, "info":Landroid/content/pm/PackageParser$IntentInfo;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7798
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7799
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$IntentInfo;

    invoke-virtual {v3, p1, p2}, Landroid/content/pm/PackageParser$IntentInfo;->writeIntentInfoToParcel(Landroid/os/Parcel;I)V

    .line 7798
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7802
    .end local v1    # "info":Landroid/content/pm/PackageParser$IntentInfo;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public greylist-max-o appendComponentShortName(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 7832
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 7833
    return-void
.end method

.method public greylist getComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 7744
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 7745
    return-object v0

    .line 7747
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7748
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 7751
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public greylist-max-o printComponentShortName(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 7836
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 7837
    return-void
.end method

.method public greylist-max-o setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7840
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 7841
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    .line 7842
    return-void
.end method

.method protected greylist-max-o writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7763
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7764
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 7766
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser$Component;->writeIntentsList(Ljava/util/ArrayList;Landroid/os/Parcel;I)V

    .line 7767
    return-void
.end method
